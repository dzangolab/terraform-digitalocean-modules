data "digitalocean_ssh_key" "ssh_keys" {
  count = length(var.ssh_keys)
  name  = var.ssh_keys[count.index]
}

resource "digitalocean_droplet" "manager" {
  backups = false
  image   = var.manager_image
  ipv6    = false
  monitoring = var.monitoring
  name = format(
    "%s-%02d.%s",
    var.manager_name,
    1,
    var.region
  )
  private_networking = true
  region = var.region
  size = var.manager_size
  ssh_keys = data.digitalocean_ssh_key.ssh_keys[*].id
  vpc_uuid   = var.vpc_id

  provisioner "remote-exec" {
    connection  {
      host = self.ipv4_address
      type = "ssh"
      user = "root"
    }

    inline = [
      "sudo apt-get -q -y update",
      "sudo apt-get -q -y upgrade",
      "docker swarm init --advertise-addr ${digitalocean_droplet.manager.ipv4_address_private}"
    ]
  }
}

resource "digitalocean_droplet" "managers" {
  backups = false
  count   = var.manager_count - 1
  image   = var.manager_image
  ipv6    = false
  monitoring = var.monitoring
  name = format(
    "%s-%02d.%s",
    var.manager_name,
    count.index + 2,
    var.region
  )
  private_networking = true
  region = var.region
  size = var.manager_size
  ssh_keys = data.digitalocean_ssh_key.ssh_keys[*].id
  vpc_uuid   = var.vpc_id

  provisioner "remote-exec" {
    connection  {
      host = digitalocean_droplet.manager[count.index].ipv4_address
      type = "ssh"
      user = "root"
    }

    inline = [
      "sudo apt-get -q -y update",
      "sudo apt-get -q -y upgrade"
    ]
  }
}

resource "digitalocean_droplet" "worker" {
  backups = false
  count   = var.worker_count
  image   = var.worker_image
  ipv6    = false
  monitoring = var.monitoring
  name = format(
    "%s-%02d.%s",
    var.worker_name,
    count.index + 1,
    var.region
  )
  private_networking = true
  region = var.region
  size = var.worker_size
  vpc_uuid   = var.vpc_id
}

resource "digitalocean_project_resources" "project" {
  depends_on = [
    digitalocean_droplet.manager,
    digitalocean_droplet.managers,
    digitalocean_droplet.worker,
  ]
  project   = var.project_id
  resources = concat(
    digitalocean_droplet.manager.*.urn, 
    digitalocean_droplet.managers.*.urn, 
    digitalocean_droplet.worker.*.urn
  )
}

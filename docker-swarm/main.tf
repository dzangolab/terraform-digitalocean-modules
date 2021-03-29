data "digitalocean_ssh_key" "ssh_keys" {
  count = length(var.ssh_keys)
  name  = var.ssh_keys[count.index]
}

resource "digitalocean_droplet" "manager" {
  backups = false
  count   = var.manager_count
  image   = var.manager_image
  ipv6    = false
  monitoring = var.monitoring
  name = format(
    "%s-%02d.%s",
    var.manager_name,
    count.index + 1,
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
      private_key = file("~/.ssh/id_ecdsa")
      type = "ssh"
      user = "ubuntu"
    }

    inline = [
      "sudo apt-get -q -y update"
      "sudo apt-get -q -y upgrade"
      "docker swarm init --advertise-addr ${digitalocean_droplet.manager[0].ipv4_address_private}"
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

resource "digitalocean_project_resources" "manager_project" {
  count = var.manager_count
  depends_on = [digitalocean_droplet.manager]
  project    = var.project_id
  resources = [
    digitalocean_droplet.manager[count.index].urn
  ]
}

resource "digitalocean_project_resources" "worker_project" {
  count = var.worker_count
  depends_on = [digitalocean_droplet.worker]
  project    = var.project_id
  resources = [
    digitalocean_droplet.worker[count.index].urn
  ]
}

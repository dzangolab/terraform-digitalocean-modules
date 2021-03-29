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
  vpc_uuid   = var.vpc_id

  provisioner "remote-exec" {
    inline = [
      "docker swarm init --advertise-addr ${digitalocean_droplet.docker_swarm_manager.ipv4_address_private}"
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
  vpc_uuid   = var.vpc_id
}

resource "digitalocean_project_resources" "manager_project" {
  depends_on = [digitalocean_droplet.manager]
  project    = var.project_id
  resources = [
    digitalocean_droplet.manager.urn
  ]
}

resource "digitalocean_project_resources" "worker_project" {
  depends_on = [digitalocean_droplet.worker]
  project    = var.project_id
  resources = [
    digitalocean_droplet.worker.urn
  ]
}

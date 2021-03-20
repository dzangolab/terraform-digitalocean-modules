data "digitalocean_ssh_key" "ssh_keys" {
  count = length(var.ssh_key_names)
  name  = var.ssh_key_names[count.index]
}

resource "digitalocean_droplet" "this" {
  backups            = var.backups
  image              = var.image
  ipv6               = var.ipv6
  monitoring         = var.monitoring
  name               = var.name
  private_networking = var.private_networking
  region             = var.region
  size               = var.size
  ssh_keys           = data.digitalocean_ssh_key.ssh_keys[*].id
  tags               = var.tags
  user_data = templatefile(var.user_data, {
    groups    = join(",", var.user_groups)
    packages  = var.packages
    ssh_keys  = data.digitalocean_ssh_key.ssh_keys[*].public_key
    username  = var.username
    swap_file = var.swap_file
    swap_size = var.swap_size
    volumes   = var.volumes
  })
  volume_ids = var.volumes[*].id
  vpc_uuid   = var.vpc != null ? data.digitalocean_vpc.vpc[0].id : null
}

resource "digitalocean_project_resources" "project" {
  depends_on = [digitalocean_droplet.this]
  project    = var.project_id
  resources = [
    digitalocean_droplet.this.urn
  ]
}

resource "digitalocean_floating_ip_assignment" "floating_ip" {
  count      = var.floating_ip != null ? 1 : 0
  depends_on = [digitalocean_droplet.this]
  droplet_id = digitalocean_droplet.this.id
  ip_address = var.floating_ip
}

resource "ovh_cloud_instance" "cloud_instances" {
  for_each = var.cloud_instances

  flavor_id          = each.value.flavor_id
  name               = each.value.name
  region             = each.value.region
  service_name       = each.value.service_name
  availability_zone  = each.value.availability_zone
  group_id           = each.value.group_id
  image_id           = each.value.image_id
  networks           = each.value.networks
  power_state        = each.value.power_state
  security_group_ids = each.value.security_group_ids
  shares             = each.value.shares
  ssh_key_name       = each.value.ssh_key_name
  user_data          = each.value.user_data
  volume_ids         = each.value.volume_ids
}


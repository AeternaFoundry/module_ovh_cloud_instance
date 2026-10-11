variable "cloud_instances" {
  description = <<EOT
Map of cloud_instances, attributes below
Required:
    - flavor_id
    - name
    - region
    - service_name
Optional:
    - availability_zone
    - group_id
    - image_id
    - networks
    - power_state
    - security_group_ids
    - shares
    - ssh_key_name
    - user_data
    - volume_ids
EOT

  type = map(object({
    flavor_id         = string
    name              = string
    region            = string
    service_name      = string
    availability_zone = optional(string)
    group_id          = optional(string)
    image_id          = optional(string)
    networks = optional(list(object({
      auto_assign_public_ip = optional(bool)
      ip                    = optional(string)
      network_id            = optional(string)
      subnet_id             = optional(string)
    })))
    power_state        = optional(string)
    security_group_ids = optional(list(string))
    shares = optional(list(object({
      access_level = optional(string)
      id           = string
    })))
    ssh_key_name = optional(string)
    user_data    = optional(string)
    volume_ids   = optional(list(string))
  }))
}


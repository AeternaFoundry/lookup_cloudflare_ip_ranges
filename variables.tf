variable "ip_ranges_lookup" {
  description = <<EOT
Map of ip_ranges_lookup, attributes below
Optional:
    - networks
EOT

  type = map(object({
    networks = optional(string)
  }))
}


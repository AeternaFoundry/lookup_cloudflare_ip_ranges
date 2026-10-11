output "ip_ranges_lookup_etag" {
  description = "Map of etag values across all ip_ranges_lookup, keyed the same as var.ip_ranges_lookup except keys with no etag are omitted"
  value       = { for k, v in data.cloudflare_ip_ranges.ip_ranges_lookup : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "ip_ranges_lookup_ipv4_cidrs" {
  description = "Map of ipv4_cidrs values across all ip_ranges_lookup, keyed the same as var.ip_ranges_lookup except keys with no ipv4_cidrs are omitted"
  value       = { for k, v in data.cloudflare_ip_ranges.ip_ranges_lookup : k => v.ipv4_cidrs if v.ipv4_cidrs != null && length(v.ipv4_cidrs) > 0 }
}
output "ip_ranges_lookup_ipv6_cidrs" {
  description = "Map of ipv6_cidrs values across all ip_ranges_lookup, keyed the same as var.ip_ranges_lookup except keys with no ipv6_cidrs are omitted"
  value       = { for k, v in data.cloudflare_ip_ranges.ip_ranges_lookup : k => v.ipv6_cidrs if v.ipv6_cidrs != null && length(v.ipv6_cidrs) > 0 }
}
output "ip_ranges_lookup_jdcloud_cidrs" {
  description = "Map of jdcloud_cidrs values across all ip_ranges_lookup, keyed the same as var.ip_ranges_lookup except keys with no jdcloud_cidrs are omitted"
  value       = { for k, v in data.cloudflare_ip_ranges.ip_ranges_lookup : k => v.jdcloud_cidrs if v.jdcloud_cidrs != null && length(v.jdcloud_cidrs) > 0 }
}
output "ip_ranges_lookup_networks" {
  description = "Map of networks values across all ip_ranges_lookup, keyed the same as var.ip_ranges_lookup except keys with no networks are omitted"
  value       = { for k, v in data.cloudflare_ip_ranges.ip_ranges_lookup : k => v.networks if v.networks != null && length(v.networks) > 0 }
}


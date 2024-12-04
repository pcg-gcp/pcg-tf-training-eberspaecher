output "instance_names" {
  description = "Names of the created instances"
  value       = google_compute_instance.default.name
}

output "instance_external_ips" {
  description = "External IP addresses of the created instances"
  value       = google_compute_instance.default.network_interface[0].access_config[0].nat_ip
}
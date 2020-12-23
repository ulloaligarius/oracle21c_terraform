output "autonomous_database_wallet_password" {
  value = "${random_string.autonomous_database_wallet_password.result}"
}

output "autonomous_database_high_connection_string" {
  value = "${lookup(oci_database_autonomous_database.autonomous_database_free_tier.connection_strings.0.all_connection_strings, "high", "unavailable")}"
}

output "autonomous_database_admin_password" {
  value = "${random_string.autonomous_database_admin_password.result}"
}

output "comments" {
  value = "Base de datos en OCI generada mediante Terraform"
}

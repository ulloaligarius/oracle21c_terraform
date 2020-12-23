resource "random_string" "autonomous_database_wallet_password" {
  length  = 16
  special = true
}

data "oci_database_autonomous_database_wallet" "autonomous_database_wallet" {
  autonomous_database_id = "${oci_database_autonomous_database.autonomous_database_free_tier.id}"
  password               = "${random_string.autonomous_database_wallet_password.result}"
  base64_encode_content  = "true"
}

resource "local_file" "autonomous_database_wallet_file" {
  content_base64 = data.oci_database_autonomous_database_wallet.autonomous_database_wallet.content
  filename       = "${path.module}/autonomous_database_wallet.zip"
}


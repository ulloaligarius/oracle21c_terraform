resource "random_string" "autonomous_database_admin_password" {
  length  = 16
  special = true
  number = true
  min_numeric = 1
  override_special = "_%@"
}

resource "oci_database_autonomous_database" "autonomous_database_free_tier" {
  admin_password           = random_string.autonomous_database_admin_password.result
  compartment_id           = var.compartment_ocid
  cpu_core_count           = "1"
  data_storage_size_in_tbs = "1"
  db_name                  = var.nombre_database
  display_name             = "Base ejemplo 21c"
  db_version               = var.version_motor
  license_model            = "LICENSE_INCLUDED"
  db_workload              = var.tipo_workload 
  is_free_tier             = "true"
  freeform_tags = {
    "Empresa" = "DBLigarius"
  }
}


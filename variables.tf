variable "tenancy_ocid" {}
variable "region" {}
variable "compartment_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "private_key_password" {}

variable "nombre_database" {
    default = "atpdb21c"
}

variable "version_motor" {
    default = "21c"
    description = "Verrsion 19c o 21c"
}

variable tipo_workload {
  default     = "OLTP"
  description = "Tipo de carga de la base , si es OLTP o Datawarehouse"
}

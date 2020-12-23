# oracle21c_terraform
Repositorio para la creación de Oracle21c OCI Free Tier con Terraform

Los archivos que existen en este repositorio :

provider.tf : Archivo que contiene los parámetros para realizar conexión a nuestro OCI Provider
variables.tf : Archivo que contiene las variables que son referenciadas desde el archivo provider.tf
autonomous_database_wallet.tf : Archivo que contiene el recurso de Wallet que crearemos para nuestra base de datos autónoma
outputs.tf : Archivo que contendrá los comandos output (comandos HCL) de los resources que generemos.
atp.tf : Archivo que contiene el recurso de base de datos autónoma
terraforms.tfvars : Archivo que contiene los seteos iniciales de nuestras variables, esta es sólo una de las formas en que se pueden setear las variables iniciales para Terraform


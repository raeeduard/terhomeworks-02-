###cloud vars


variable "vm_db_cloud_id" {
  type        = string
  default     = "enp920n01hnberkdjvua"
  description = "enp920n01hnberkdjvua"
}

variable "vm_db_folder_id" {
  type        = string
  default     = "b1g3u4fjk6qf1hl6o0ok"
  description = "b1g3u4fjk6qf1hl6o0ok"
  
}

variable "vm_db_default_zone" {
  type        = string
  default     = "ru-central1-b"
  description = "ru-central1-b"
}
variable "vm_db_default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vm_db_vpc_name" {
  type        = string
  default     = "vm_db_develop"
  description = "VPC network & subnet name"
}


###ssh vars
/*
variable "vm_db_ssh_root_key" {
  type        = string
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIM6yiQ05doVfYsWfh0+rkucwKPAgz1//GVs2jFUUzLcJ test@test"
  description = "ssh-keygen -t ed25519"
}
*/

###vm_db vars

variable "vm_db_os" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "ubuntu-2004-lts"
}
/*
variable "vm_db_vm_name" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "vm_db name"
}
*/

variable "vm_db_platform_id" {
  type        = string
  default     = "standard-v3"
  description = "platform_id"
}
/*
variable  "vm_db_number_cores" {
  type        = number
  default     = 2
  description = "number of cores"
}

variable   "vm_db_ram" {
  type        = number
  default     = 2
  description = "memory gb"
}

variable   "vm_db_core_fraction" {
  type        = number
  default     = 20
  description = "core fraction"
}
*/
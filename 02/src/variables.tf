###cloud vars


variable "cloud_id" {
  type        = string
  default     = "enp920n01hnberkdjvua"
  description = "enp920n01hnberkdjvua"
}

variable "folder_id" {
  type        = string
  default     = "b1g3u4fjk6qf1hl6o0ok"
  description = "b1g3u4fjk6qf1hl6o0ok"
  
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "ru-central1-a"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}

/*
###ssh vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIM6yiQ05doVfYsWfh0+rkucwKPAgz1//GVs2jFUUzLcJ test@test"
  description = "ssh-keygen -t ed25519"
}
*/

###vm_web vars

variable "vm_web_os" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "ubuntu-2004-lts"
}
/*
variable "vm_web_vm_name" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "vm name"
}
*/

variable "vm_web_platform_id" {
  type        = string
  default     = "standard-v3"
  description = "platform_id"
}
/*
variable  "vm_web_number_cores" {
  type        = number
  default     = 2
  description = "number of cores"
}

variable   "vm_web_ram" {
  type        = number
  default     = 1
  description = "memory gb"
}

variable   "vm_web_core_fraction" {
  type        = number
  default     = 20
  description = "core fraction"
}
*/


###vms_resources


variable "vms_resources" {
  description = "Ресурсы для всех ВМ в виде вложенной map"
  type = map(object({
    cores         = number
    memory        = number
    core_fraction = number
  }))
  default = {
    web = {
      cores         = 2
      memory        = 1  
      core_fraction = 20 
    },
    db = {
      cores         = 2
      memory        = 2  
      core_fraction = 20 
    }
  }
}
/*
variable "metadata" {
  description = "Ресурсы для всех ВМ в виде вложенной map"
  type = map(object({
    serial-port-enable = bool
    ssh-keys           = string
  }))
  default = {
    serial-port-enable = 1
    ssh-keys           = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIM6yiQ05doVfYsWfh0+rkucwKPAgz1//GVs2jFUUzLcJ test@test"
  }
}
*/

variable "metadata" {
  type = map(any)  # или другой подходящий тип
  default = {
    serial-port-enable = 1
    ssh-keys           = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIM6yiQ05doVfYsWfh0+rkucwKPAgz1//GVs2jFUUzLcJ test@test"
  }
}
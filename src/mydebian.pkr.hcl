
variable "yc_token" {
  type    = string
  default = ""
}

variable "yc_folder" {
  type    = string
  default = ""
}

variable "yc_subnet" {
  type    = string
  default = ""
}

variable "yc_zone" {
  type    = string
  default = ""
}


source "yandex" "debian_docker" {
  disk_type           = "network-hdd"
  folder_id           = var.yc_folder
  image_description   = "my custom debian with docker"
  image_name          = "debian-11-docker"
  source_image_family = "debian-11"
  ssh_username        = "debian"
  subnet_id           = var.yc_subnet
  token               = var.yc_token
  use_ipv4_nat        = true
  zone                = var.yc_zone
}

build {
  sources = ["source.yandex.debian_docker"]

  provisioner "shell" {
    inline = [
      "curl -sSL https://get.docker.com/ | sudo sh"
    ]
  }

}
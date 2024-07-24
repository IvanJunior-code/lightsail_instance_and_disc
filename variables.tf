variable "key_pair_name" {
}

variable "path_key_pair" {
}

variable "availability_zone" {
  default = "us-east-1a"
}

variable "blueprint_id" {
  default = "ubuntu_22_04" #aws lightsail get-blueprints
}

variable "bundle_id" {
  default = "micro_3_0" #aws lightsail get-bundles
}
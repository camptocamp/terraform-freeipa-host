variable "hostname" {
  type = string
}

variable "domain" {
  type    = string
  default = ""
}

variable "ip_address" {
  type    = string
  default = ""
}

variable "force" {
  type    = bool
  default = false
}

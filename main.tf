resource "random_password" "otp" {
  length  = 30
  special = false
}

resource "freeipa_host" "this" {
  fqdn         = var.hostname
  userpassword = random_password.otp.result

  force = var.force
}

data "template_file" "cloudinit_config" {
  template = file("${path.module}/templates/freeipa.cfg")

  vars = {
    hostname = var.hostname
    domain   = var.domain != null ? var.domain : ""
    password = random_password.otp.result
  }
}

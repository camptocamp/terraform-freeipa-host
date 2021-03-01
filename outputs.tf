output "cloudinit_config" {
  value = data.template_file.cloudinit_config.rendered
}

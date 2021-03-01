terraform {
  required_version = ">= 0.13"

  required_providers {
    random = {
      source = "hashicorp/random"
    }

    freeipa = {
      source = "camptocamp/freeipa"
    }

    template = {
      source = "hashicorp/template"
    }
  }
}

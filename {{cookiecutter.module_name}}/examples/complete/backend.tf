terraform {
  required_version = ">= {{ cookiecutter.tf_version }}"

  # backend "remote" {
  #   hostname = "HOSTNAME"
  #   organization = "ORGANIZATION"

  #   workspaces {
  #     name = "{{ cookiecutter.module_name }}-complete-example"
  #   }
  # }
}

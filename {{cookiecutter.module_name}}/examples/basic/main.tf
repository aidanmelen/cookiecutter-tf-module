{% if cookiecutter.use_aws_provider == "y" -%}
provider "aws" {
  version = ">= 2.70"
}
{% endif -%}

module "{{ cookiecutter.module_name.replace('-', '_') }}" {
  source = "../../"
}

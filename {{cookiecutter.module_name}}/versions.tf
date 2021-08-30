terraform {
  required_version = ">= {{ cookiecutter.tf_version }}"
{%- if cookiecutter.use_aws_provider == "y" %}

  required_providers {
    aws = ">= 3.55.0"
  }

{%- endif %}
}

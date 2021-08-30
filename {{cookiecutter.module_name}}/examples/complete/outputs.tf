output "hello_world" {
  value = module.{{ cookiecutter.module_name.replace('-', '_') }}.hello_world
}

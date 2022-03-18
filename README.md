[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)

# cookiecutter-tf-module

![cookiecutter + terraform](https://app.lucidchart.com/publicSegments/view/cc4a32be-9ba9-4c64-863b-6646b2b6f10a/image.png)

Cookiecutter template for creating Terraform modules. Modules are intended to be reused by one or many [workspaces](https://www.terraform.io/docs/cloud/workspaces/index.html). This template is heavily influenced by the [Hashicorp's minimal-module structure](https://learn.hashicorp.com/tutorials/terraform/module?in=terraform/modules#what-are-modules-for) and the DevOps patterns used in the popular [terraform-aws-eks community module](https://github.com/terraform-aws-modules/terraform-aws-eks).

Also checkout [cookiecutter-tf-workspace](https://github.com/aidanmelen/cookiecutter-tf-workspace).

## Other documentation

- [Should You Create A Module?](https://www.terraform.io/docs/cloud/guides/recommended-practices/part3.2.html#3-create-your-first-module)
- [Publishing Modules to the Terraform Cloud Private Module Registry ](https://www.terraform.io/docs/cloud/registry/publish.html#publishing-a-new-module)
- [Automate Terraform with GitHub Actions](https://learn.hashicorp.com/tutorials/terraform/github-actions?in=terraform/automation)

## Quickstart

```bash
$ pip install cookiecutter
$ cookiecutter git@github.com:aidanmelen/cookiecutter-tf-module.git
$ cd [MODULE_NAME]
$ make
```

You will be prompted for basic info (your name, module name, etc.) which will be used in the template.

This will create the following:

```
terraform-module-example
├── Makefile
├── README.md
├── docs
│   └── developer-notes.md
├── examples
│   ├── complete
│   │   ├── backend.tf
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   └── variables.tf
│   └── basic
│       ├── backend.tf
│       ├── main.tf
│       ├── outputs.tf
│       └── variables.tf
├── main.tf
├── outputs.tf
├── tests
├── variables.tf
└── versions.tf
```

That's all you need to get started.

## License

MIT Licensed. See [LICENSE](https://github.com/aidanmelen/cookiecutter-tf-module/tree/master/LICENSE) for full details.

## Credits

- This project was inspired heavily by the [terraform-aws-eks community module](https://github.com/terraform-aws-modules/terraform-aws-eks). Many thanks to the [authors](https://github.com/terraform-aws-modules/terraform-aws-eks#authors) for all there hard work.

- Shout-out to [cjolowicz](https://github.com/cjolowicz) for demonstrating the power of `pre-commit` and `github actons` in his highly recommend [Hypermodern Python blog](https://cjolowicz.github.io/posts/hypermodern-python-01-setup/)! His work creating the [cookiecutter-hypermodern-python](https://github.com/cjolowicz/cookiecutter-hypermodern-python) was a big inspiration in creating this template.

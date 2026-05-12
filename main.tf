terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

module "readme" {
  source = "./modules/file_creator"

  content = "# ${var.project_name}\nAuthor: ${var.author}\nEnv: ${var.environment}"

  filename = "${path.module}/output/README.md"
}

module "config" {
  source = "./modules/file_creator"
  content = "Project - ${var.project_name}\nAuthor: ${var.author}\nEnv: ${var.environment}"
  filename = "${path.module}/output/config.env"
}

module "log" {
  source = "./modules/file_creator"
  content = "Project Initialised on ${var.project_name}\nAuthor: ${var.author}\nEnv: ${var.environment}"
  filename = "${path.module}/output/init.log"
}
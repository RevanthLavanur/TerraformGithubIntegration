  terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.2.3"
    }
  }
}

provider "github" {
  # Configuration options

  token = var.token # or `GITHUB_TOKEN`
}

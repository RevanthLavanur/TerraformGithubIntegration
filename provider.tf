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
resource "github_repository" "example" {
  name        = "TerraformGithubIntegration"
  description = "Integrating terraform with the github"
   auto_init = true
  visibility = "public" 
}
resource "github_repository_file" "repo" {
  repository          = github_repository.example.name
  branch              = "main"
   file                = "abc.txt"
  content             = "This is Revanth Reddy. Devops Engineer."
  
}

resource "github_branch" "development" {
  repository = github_repository.example.name
  branch     = "master"
}

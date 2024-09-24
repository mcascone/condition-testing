# data "github_user" "current" {
#   username = var.github_username
# }

resource "github_repository_environment" "example2" {
  environment         = "example2"
  repository          = var.github_repository_name
  prevent_self_review = true

  # reviewers {
  #   users = [data.github_user.current.id]
  # }
  
  deployment_branch_policy {
    protected_branches     = true
    custom_branch_policies = false
  }
}
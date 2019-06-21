module "example_repository" {
  source = "../"
  name                  = "example-repo"

  allow_squash_merge    = false
  has_issues            = true
  auto_init             = true
  team_slug             = "developers"
}


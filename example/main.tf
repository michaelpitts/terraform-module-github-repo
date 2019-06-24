module "example_repository" {
  source = "../"
  name                  = "example-repo"

  allow_squash_merge    = false
  has_issues            = true
  auto_init             = true
  team_slug             = "developers"


  required_status_checks = [
    {
      strict    = false
      contexts  = ["ci/jenkins"]
    }
  ]
  
  required_pull_request_reviews = [
    {
      dismiss_stale_reviews = true
      dismissal_users       = ["michaelpitts"]
      dismissal_teams       = ["developers"]
    }
  ]

  restrictions = [
    {
      users = ["michaelpitts"]
      teams  = ["developers"]
    }
  ]

}

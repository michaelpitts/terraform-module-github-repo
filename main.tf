provider "github" {}

resource "github_repository" "this" {
  name                = "${var.name}"
  description         = "${var.description}"
  homepage_url        = "${var.homepage_url}"

  private             = "${var.private}"
  auto_init           = "${var.auto_init}"
  default_branch      = "${var.default_branch}"

  gitignore_template  = "${var.gitignore_template}"
  license_template    = "${var.license_template}"

  has_issues          = "${var.has_issues}"
  has_projects        = "${var.has_projects}"
  has_wiki            = "${var.has_wiki}"
  has_downloads       = "${var.has_downloads}"
  topics              = "${var.topics}"

  allow_merge_commit  = "${var.allow_merge_commit}"
  allow_squash_merge  = "${var.allow_squash_merge}"
  allow_rebase_merge  = "${var.allow_rebase_merge}"

  archived            = "${var.archived}"
}

data "github_repository" "reference" {
  full_name = "${github_repository.this.full_name}"
}

resource "github_branch_protection" "this" {
  depends_on = ["github_repository.this","null_resource.pull_request_template"]
  
  repository                    = "${github_repository.this.name}"
  branch                        = "${data.github_repository.reference.default_branch}"
  enforce_admins                = "${var.enforce_admins}"
  required_status_checks        = "${var.required_status_checks}"
  required_pull_request_reviews = "${var.required_pull_request_reviews}"
  restrictions                  = "${var.restrictions}"
}

resource "null_resource" "pull_request_template" {
  depends_on = ["github_repository.this"]
  provisioner "local-exec" {
    command = "git clone ${github_repository.this.ssh_clone_url} ; cp ./docs/pull_request_template.md ${github_repository.this.name}/PULL_REQUEST_TEMPLATE.md ; cd ${github_repository.this.name}/ ; git add PULL_REQUEST_TEMPLATE.md ; git commit -m 'adding pull request template' ; git push ; cd ../ ; rm -rf ${github_repository.this.name}/"
  }
}

data "github_team" "example" {
  slug = "${var.team_slug}"
}

resource "github_team_repository" "this" {
  depends_on  = ["github_repository.this"]

  team_id     = "${data.github_team.example.id}"
  repository  = "${github_repository.this.name}"
  permission  = "${var.permission}"
}

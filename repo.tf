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

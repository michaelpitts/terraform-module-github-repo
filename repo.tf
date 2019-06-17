resource "github_repo" "this" {
  name            = "${var.name}"
  description     = "${var.description}"
  homepage_url    = "${var.homepage_url}"
}

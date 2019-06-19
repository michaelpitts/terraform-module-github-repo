output "full_name" {
  description = "A string of the form \\\"orgname/reponame\\\"."
  value       = "${github_repository.this.full_name}"
}

output "html_url" {
  description = "URL to the repository on the web."
  value       = "${github_repository.this.html_url}"
}

output "ssh_clone_url" {
  description = "URL that can be provided to `git clone` to clone the repository via SSH."
  value       = "${github_repository.this.ssh_clone_url}"
}

output "http_clone_url" {
  description = "URL that can be provided to `git clone` to clone the repository via HTTPS."
  value = "${github_repository.this.http_clone_url}"
}

output "git_clone_url" {
  description = "URL that can be provided to `git clone` to clone the repository anonymously via the git protocol."
  value = "${github_repository.this.git_clone_url}"
}

output "svn_url" {
  description = " URL that can be provided to svn checkout to check out the repository via GitHub's Subversion protocol emulation."
  value       = "${github_repository.this.svn_url}"
}


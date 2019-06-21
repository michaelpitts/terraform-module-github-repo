variable "name" {
  description = "(Required) The name of the repository."
  type        = "string"
}

variable "description" {
  description = "(Optional) A description of the repository."
  type        = "string"
  default     = ""
}

variable "homepage_url" {
  description = "(Optional) URL of a page describing the project."
  type        = "string"
  default     = ""
}

variable "private" {
  description = "(Optional) Set to true to create a private repository. Repositories are created as public (e.g. open source) by default."
  type        = "string"
  default     = false
}

variable "has_issues" {
  description = "(Optional) Set to true to enable the GitHub Issues features on the repository."
  type        = "string"
  default     = false
}

variable "has_projects" {
  description = "(Optional) Set to true to enable the GitHub Projects features on the repository. Per the github documentation when in an organization that has disabled repository projects it will default to false and will otherwise default to true. If you specify true when it has been disabled it will return an error."
  type        = "string"
  default     = false
}

variable "has_wiki" {
  description = "(Optional) Set to true to enable the GitHub Wiki features on the repository."
  type        = "string"
  default     = false
}

variable "allow_merge_commit" {
  description = "(Optional) Set to false to disable merge commits on the repository."
  type        = "string"
  default     = true
}

variable "allow_squash_merge" {
  description = " (Optional) Set to false to disable squash merges on the repository."
  type        = "string"
  default     = true
}

variable "allow_rebase_merge" {
  description = "(Optional) Set to false to disable rebase merges on the repository."
  type        = "string"
  default     = true
}

variable "has_downloads" {
  description = "(Optional) Set to true to enable the (deprecated) downloads features on the repository."
  type        = "string"
  default     = false
}

variable "auto_init" {
  description = "(Optional) Set to true to produce an initial commit in the repository."
  type        = "string"
  default     = false
}

variable "gitignore_template" {
  description = "(Optional) Use the name of the template without the extension. For example, \\\"Haskell\\\"."
  type        = "string"
  default     = ""
}

variable "license_template" {
  description = "(Optional) Use the name of the template without the extension. For example, \\\"mit\\\" or \\\"mpl-2.0\\\"."
  type        = "string"
  default     = ""
}

variable "default_branch" {
  description = "(Optional) The name of the default branch of the repository. NOTE: This can only be set after a repository has already been created, and after a correct reference has been created for the target branch inside the repository. This means a user will have to omit this parameter from the initial repository creation and create the target branch inside of the repository prior to setting this attribute."
  type        = "string"
  default     = ""
}

variable "archived" {
  description = "(Optional) Specifies if the repository should be archived. Defaults to false."
  type        = "string"
  default     = false
}

variable "topics" {
  description = "(Optional) The list of topics of the repository."
  type        = "list"
  default     = []
}

variable "enforce_admins" {
  description = "(Optional) Boolean, setting this to true enforces status checks for repository administrators."
  type        = "string"
  default     = false
}

variable "required_status_checks" {
  description = "(Optional) Enforce restrictions for required status checks."
  type        = "list"
  default     = []
}

variable "required_pull_request_reviews" {
  description = "(Optional) Enforce restrictions for pull request reviews."
  type        = "list"
  default     = []
}

variable "restrictions" {
  description = "(Optional) Enforce restrictions for the users and teams that may push to the branch."
  type        = "list"
  default     = []
}

variable "team_slug" {
  description = "(Required) The GitHub team slug"
  type        = "string"
  default     = ""
}

variable "permission" {
  description = "(Optional) The permissions of team members regarding the repository. Must be one of pull, push, or admin. Defaults to pull."
  type        = "string"
  default     = "pull"
}

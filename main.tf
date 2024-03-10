resource "cloudflare_pages_project" "utils-hiroxto-net" {
  account_id        = var.account_id
  name              = var.project_name
  production_branch = "master"

  build_config {
    build_command       = "pnpm run generate"
    destination_dir     = "dist"
    root_dir            = "/"
    web_analytics_tag   = var.web_analytics_tag
    web_analytics_token = var.web_analytics_token
  }

  source {
    type = "github"
    config {
      owner                         = "hiroxto"
      repo_name                     = "utils.hiroxto.net"
      production_branch             = "master"
      pr_comments_enabled           = true
      deployments_enabled           = true
      production_deployment_enabled = true
      preview_deployment_setting    = "all"
      preview_branch_excludes       = []
      preview_branch_includes = [
        "*",
      ]
    }
  }
}

workflow "Deploy" {
  on = "push"
  resolves = ["ghpages"]
}

action "Filters for GitHub Actions" {
  uses = "actions/bin/filter@3c0b4f0e63ea54ea5df2914b4fabf383368cd0da"
  args = "branch master"
}

action "ghpages" {
  uses = "maxheld83/ghpages@v0.2.1"
  needs = ["Filters for GitHub Actions"]
  env = {
    BUILD_DIR = "dist"
  }
  secrets = ["GH_PAT"]
}

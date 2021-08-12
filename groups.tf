resource "okta_group" "engineering_it" {
  name        = "Engineering - IT"
  description = "For IT members"
}

resource "okta_group_memberships" "engineering_it" {
  group_id = okta_group.engineering_it.id
  users = [
    local.all_users["lukasindre@gmail.com"]["id"],
    local.all_users["lukas.test@upstart.com"]["id"],
  ]
}

resource "okta_group" "gods_only" {
  name        = "Gods Only"
  description = "For Gods Only"
}

resource "okta_group_memberships" "gods_only" {
  group_id = okta_group.gods_only.id
  users = [
    local.all_users["foo@bar.com"]["id"]
  ]
}


data "okta_users" "all_users" {
  search {
    name       = "profile.login"
    value      = ""
    comparison = "sw"
  }
}

data "okta_groups" "all_groups" {
  type = "OKTA_GROUP"
}

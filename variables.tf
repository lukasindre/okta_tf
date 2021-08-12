locals {
  all_users  = { for k, v in data.okta_users.all_users.users : v.login => v }
  all_groups = { for k, v in data.okta_groups.all_groups.groups : v.name => v }
}

resource "okta_group_rule" "gods_only" {
  name   = "Gods Only Mapping"
  status = "ACTIVE"
  group_assignments = [
    local.all_groups["Gods Only"]["id"]
  ]
  expression_type  = "urn:okta:expression:1.0"
  expression_value = "isMemberOfAnyGroup(\"${local.all_groups["Engineering - IT"]["id"]}\")"
}

data "gitlab_group_hooks" "group_hooks_lookup" {
  for_each = var.group_hooks_lookup

  group = each.value.group
}


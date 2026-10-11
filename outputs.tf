output "group_hooks_lookup_id" {
  description = "Map of id values across all group_hooks_lookup, keyed the same as var.group_hooks_lookup except keys with no id are omitted"
  value       = { for k, v in data.gitlab_group_hooks.group_hooks_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "group_hooks_lookup_group" {
  description = "Map of group values across all group_hooks_lookup, keyed the same as var.group_hooks_lookup except keys with no group are omitted"
  value       = { for k, v in data.gitlab_group_hooks.group_hooks_lookup : k => v.group if v.group != null && length(v.group) > 0 }
}
output "group_hooks_lookup_hooks" {
  description = "Map of hooks values across all group_hooks_lookup, keyed the same as var.group_hooks_lookup except keys with no hooks are omitted"
  value       = { for k, v in data.gitlab_group_hooks.group_hooks_lookup : k => v.hooks if v.hooks != null && length(v.hooks) > 0 }
}


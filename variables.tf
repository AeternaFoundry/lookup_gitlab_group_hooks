variable "group_hooks_lookup" {
  description = <<EOT
Map of group_hooks_lookup, attributes below
Required:
    - group
EOT

  type = map(object({
    group = string
  }))
}


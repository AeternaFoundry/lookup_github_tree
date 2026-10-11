variable "tree_lookup" {
  description = <<EOT
Map of tree_lookup, attributes below
Required:
    - repository
    - tree_sha
Optional:
    - recursive
EOT

  type = map(object({
    repository = string
    tree_sha   = string
    recursive  = optional(bool)
  }))
}


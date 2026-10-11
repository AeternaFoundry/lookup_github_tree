data "github_tree" "tree_lookup" {
  for_each = var.tree_lookup

  repository = each.value.repository
  tree_sha   = each.value.tree_sha
  recursive  = each.value.recursive
}


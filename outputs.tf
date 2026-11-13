output "tree_lookup_id" {
  description = "Map of id values across all tree_lookup, keyed the same as var.tree_lookup"
  value       = { for k, v in data.github_tree.tree_lookup : k => v.id }
}
output "tree_lookup_entries" {
  description = "Map of entries values across all tree_lookup, keyed the same as var.tree_lookup"
  value       = { for k, v in data.github_tree.tree_lookup : k => v.entries }
}
output "tree_lookup_recursive" {
  description = "Map of recursive values across all tree_lookup, keyed the same as var.tree_lookup"
  value       = { for k, v in data.github_tree.tree_lookup : k => v.recursive }
}
output "tree_lookup_repository" {
  description = "Map of repository values across all tree_lookup, keyed the same as var.tree_lookup"
  value       = { for k, v in data.github_tree.tree_lookup : k => v.repository }
}
output "tree_lookup_tree_sha" {
  description = "Map of tree_sha values across all tree_lookup, keyed the same as var.tree_lookup"
  value       = { for k, v in data.github_tree.tree_lookup : k => v.tree_sha }
}


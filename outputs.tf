output "tree_lookup_id" {
  description = "Map of id values across all tree_lookup, keyed the same as var.tree_lookup"
  value       = { for k, v in data.github_tree.tree_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "tree_lookup_entries" {
  description = "Map of entries values across all tree_lookup, keyed the same as var.tree_lookup"
  value       = { for k, v in data.github_tree.tree_lookup : k => v.entries if v.entries != null && length(v.entries) > 0 }
}
output "tree_lookup_recursive" {
  description = "Map of recursive values across all tree_lookup, keyed the same as var.tree_lookup"
  value       = { for k, v in data.github_tree.tree_lookup : k => v.recursive if v.recursive != null }
}
output "tree_lookup_repository" {
  description = "Map of repository values across all tree_lookup, keyed the same as var.tree_lookup"
  value       = { for k, v in data.github_tree.tree_lookup : k => v.repository if v.repository != null && length(v.repository) > 0 }
}
output "tree_lookup_tree_sha" {
  description = "Map of tree_sha values across all tree_lookup, keyed the same as var.tree_lookup"
  value       = { for k, v in data.github_tree.tree_lookup : k => v.tree_sha if v.tree_sha != null && length(v.tree_sha) > 0 }
}


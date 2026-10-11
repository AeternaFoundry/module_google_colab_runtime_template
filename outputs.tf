output "colab_runtime_templates_id" {
  description = "Map of id values across all colab_runtime_templates, keyed the same as var.colab_runtime_templates except keys with no id are omitted"
  value       = { for k, v in google_colab_runtime_template.colab_runtime_templates : k => v.id if v.id != null && length(v.id) > 0 }
}
output "colab_runtime_templates_data_persistent_disk_spec" {
  description = "Map of data_persistent_disk_spec values across all colab_runtime_templates, keyed the same as var.colab_runtime_templates except keys with no data_persistent_disk_spec are omitted"
  value       = { for k, v in google_colab_runtime_template.colab_runtime_templates : k => one(v.data_persistent_disk_spec) if v.data_persistent_disk_spec != null && length(v.data_persistent_disk_spec) > 0 }
}
output "colab_runtime_templates_deletion_policy" {
  description = "Map of deletion_policy values across all colab_runtime_templates, keyed the same as var.colab_runtime_templates except keys with no deletion_policy are omitted"
  value       = { for k, v in google_colab_runtime_template.colab_runtime_templates : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "colab_runtime_templates_description" {
  description = "Map of description values across all colab_runtime_templates, keyed the same as var.colab_runtime_templates except keys with no description are omitted"
  value       = { for k, v in google_colab_runtime_template.colab_runtime_templates : k => v.description if v.description != null && length(v.description) > 0 }
}
output "colab_runtime_templates_display_name" {
  description = "Map of display_name values across all colab_runtime_templates, keyed the same as var.colab_runtime_templates except keys with no display_name are omitted"
  value       = { for k, v in google_colab_runtime_template.colab_runtime_templates : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "colab_runtime_templates_effective_labels" {
  description = "Map of effective_labels values across all colab_runtime_templates, keyed the same as var.colab_runtime_templates except keys with no effective_labels are omitted"
  value       = { for k, v in google_colab_runtime_template.colab_runtime_templates : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "colab_runtime_templates_encryption_spec" {
  description = "Map of encryption_spec values across all colab_runtime_templates, keyed the same as var.colab_runtime_templates except keys with no encryption_spec are omitted"
  value       = { for k, v in google_colab_runtime_template.colab_runtime_templates : k => one(v.encryption_spec) if v.encryption_spec != null && length(v.encryption_spec) > 0 }
}
output "colab_runtime_templates_euc_config" {
  description = "Map of euc_config values across all colab_runtime_templates, keyed the same as var.colab_runtime_templates except keys with no euc_config are omitted"
  value       = { for k, v in google_colab_runtime_template.colab_runtime_templates : k => one(v.euc_config) if v.euc_config != null && length(v.euc_config) > 0 }
}
output "colab_runtime_templates_idle_shutdown_config" {
  description = "Map of idle_shutdown_config values across all colab_runtime_templates, keyed the same as var.colab_runtime_templates except keys with no idle_shutdown_config are omitted"
  value       = { for k, v in google_colab_runtime_template.colab_runtime_templates : k => one(v.idle_shutdown_config) if v.idle_shutdown_config != null && length(v.idle_shutdown_config) > 0 }
}
output "colab_runtime_templates_labels" {
  description = "Map of labels values across all colab_runtime_templates, keyed the same as var.colab_runtime_templates except keys with no labels are omitted"
  value       = { for k, v in google_colab_runtime_template.colab_runtime_templates : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "colab_runtime_templates_location" {
  description = "Map of location values across all colab_runtime_templates, keyed the same as var.colab_runtime_templates except keys with no location are omitted"
  value       = { for k, v in google_colab_runtime_template.colab_runtime_templates : k => v.location if v.location != null && length(v.location) > 0 }
}
output "colab_runtime_templates_machine_spec" {
  description = "Map of machine_spec values across all colab_runtime_templates, keyed the same as var.colab_runtime_templates except keys with no machine_spec are omitted"
  value       = { for k, v in google_colab_runtime_template.colab_runtime_templates : k => one(v.machine_spec) if v.machine_spec != null && length(v.machine_spec) > 0 }
}
output "colab_runtime_templates_name" {
  description = "Map of name values across all colab_runtime_templates, keyed the same as var.colab_runtime_templates except keys with no name are omitted"
  value       = { for k, v in google_colab_runtime_template.colab_runtime_templates : k => v.name if v.name != null && length(v.name) > 0 }
}
output "colab_runtime_templates_network_spec" {
  description = "Map of network_spec values across all colab_runtime_templates, keyed the same as var.colab_runtime_templates except keys with no network_spec are omitted"
  value       = { for k, v in google_colab_runtime_template.colab_runtime_templates : k => one(v.network_spec) if v.network_spec != null && length(v.network_spec) > 0 }
}
output "colab_runtime_templates_network_tags" {
  description = "Map of network_tags values across all colab_runtime_templates, keyed the same as var.colab_runtime_templates except keys with no network_tags are omitted"
  value       = { for k, v in google_colab_runtime_template.colab_runtime_templates : k => v.network_tags if v.network_tags != null && length(v.network_tags) > 0 }
}
output "colab_runtime_templates_project" {
  description = "Map of project values across all colab_runtime_templates, keyed the same as var.colab_runtime_templates except keys with no project are omitted"
  value       = { for k, v in google_colab_runtime_template.colab_runtime_templates : k => v.project if v.project != null && length(v.project) > 0 }
}
output "colab_runtime_templates_shielded_vm_config" {
  description = "Map of shielded_vm_config values across all colab_runtime_templates, keyed the same as var.colab_runtime_templates except keys with no shielded_vm_config are omitted"
  value       = { for k, v in google_colab_runtime_template.colab_runtime_templates : k => one(v.shielded_vm_config) if v.shielded_vm_config != null && length(v.shielded_vm_config) > 0 }
}
output "colab_runtime_templates_software_config" {
  description = "Map of software_config values across all colab_runtime_templates, keyed the same as var.colab_runtime_templates except keys with no software_config are omitted"
  value       = { for k, v in google_colab_runtime_template.colab_runtime_templates : k => one(v.software_config) if v.software_config != null && length(v.software_config) > 0 }
}
output "colab_runtime_templates_terraform_labels" {
  description = "Map of terraform_labels values across all colab_runtime_templates, keyed the same as var.colab_runtime_templates except keys with no terraform_labels are omitted"
  value       = { for k, v in google_colab_runtime_template.colab_runtime_templates : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}


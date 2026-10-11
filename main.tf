resource "google_colab_runtime_template" "colab_runtime_templates" {
  for_each = var.colab_runtime_templates

  display_name    = each.value.display_name
  location        = each.value.location
  deletion_policy = each.value.deletion_policy
  description     = each.value.description
  labels          = each.value.labels
  name            = each.value.name
  network_tags    = each.value.network_tags
  project         = each.value.project

  dynamic "data_persistent_disk_spec" {
    for_each = each.value.data_persistent_disk_spec != null ? [each.value.data_persistent_disk_spec] : []
    content {
      disk_size_gb = data_persistent_disk_spec.value.disk_size_gb
      disk_type    = data_persistent_disk_spec.value.disk_type
    }
  }

  dynamic "encryption_spec" {
    for_each = each.value.encryption_spec != null ? [each.value.encryption_spec] : []
    content {
      kms_key_name = encryption_spec.value.kms_key_name
    }
  }

  dynamic "euc_config" {
    for_each = each.value.euc_config != null ? [each.value.euc_config] : []
    content {
      euc_disabled = euc_config.value.euc_disabled
    }
  }

  dynamic "idle_shutdown_config" {
    for_each = each.value.idle_shutdown_config != null ? [each.value.idle_shutdown_config] : []
    content {
      idle_timeout = idle_shutdown_config.value.idle_timeout
    }
  }

  dynamic "machine_spec" {
    for_each = each.value.machine_spec != null ? [each.value.machine_spec] : []
    content {
      accelerator_count = machine_spec.value.accelerator_count
      accelerator_type  = machine_spec.value.accelerator_type
      machine_type      = machine_spec.value.machine_type
    }
  }

  dynamic "network_spec" {
    for_each = each.value.network_spec != null ? [each.value.network_spec] : []
    content {
      enable_internet_access = network_spec.value.enable_internet_access
      network                = network_spec.value.network
      subnetwork             = network_spec.value.subnetwork
    }
  }

  dynamic "shielded_vm_config" {
    for_each = each.value.shielded_vm_config != null ? [each.value.shielded_vm_config] : []
    content {
      enable_secure_boot = shielded_vm_config.value.enable_secure_boot
    }
  }

  dynamic "software_config" {
    for_each = each.value.software_config != null ? [each.value.software_config] : []
    content {
      dynamic "colab_image" {
        for_each = software_config.value.colab_image != null ? [software_config.value.colab_image] : []
        content {
          release_name = colab_image.value.release_name
        }
      }
      dynamic "env" {
        for_each = software_config.value.env != null ? software_config.value.env : []
        content {
          name  = env.value.name
          value = env.value.value
        }
      }
      dynamic "post_startup_script_config" {
        for_each = software_config.value.post_startup_script_config != null ? [software_config.value.post_startup_script_config] : []
        content {
          post_startup_script          = post_startup_script_config.value.post_startup_script
          post_startup_script_behavior = post_startup_script_config.value.post_startup_script_behavior
          post_startup_script_url      = post_startup_script_config.value.post_startup_script_url
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}


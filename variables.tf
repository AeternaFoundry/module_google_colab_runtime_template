variable "colab_runtime_templates" {
  description = <<EOT
Map of colab_runtime_templates, attributes below
Required:
    - display_name
    - location
Optional:
    - deletion_policy
    - description
    - labels
    - name
    - network_tags
    - project
    - data_persistent_disk_spec (block):
        - disk_size_gb (optional)
        - disk_type (optional)
    - encryption_spec (block):
        - kms_key_name (optional)
    - euc_config (block):
        - euc_disabled (optional)
    - idle_shutdown_config (block):
        - idle_timeout (optional)
    - machine_spec (block):
        - accelerator_count (optional)
        - accelerator_type (optional)
        - machine_type (optional)
    - network_spec (block):
        - enable_internet_access (optional)
        - network (optional)
        - subnetwork (optional)
    - shielded_vm_config (block):
        - enable_secure_boot (optional)
    - software_config (block):
        - colab_image (optional, block):
            - release_name (optional)
        - env (optional, block):
            - name (optional)
            - value (optional)
        - post_startup_script_config (optional, block):
            - post_startup_script (optional)
            - post_startup_script_behavior (optional)
            - post_startup_script_url (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    display_name    = string
    location        = string
    deletion_policy = optional(string)
    description     = optional(string)
    labels          = optional(map(string))
    name            = optional(string)
    network_tags    = optional(list(string))
    project         = optional(string)
    data_persistent_disk_spec = optional(object({
      disk_size_gb = optional(string)
      disk_type    = optional(string)
    }))
    encryption_spec = optional(object({
      kms_key_name = optional(string)
    }))
    euc_config = optional(object({
      euc_disabled = optional(bool)
    }))
    idle_shutdown_config = optional(object({
      idle_timeout = optional(string)
    }))
    machine_spec = optional(object({
      accelerator_count = optional(number)
      accelerator_type  = optional(string)
      machine_type      = optional(string)
    }))
    network_spec = optional(object({
      enable_internet_access = optional(bool)
      network                = optional(string)
      subnetwork             = optional(string)
    }))
    shielded_vm_config = optional(object({
      enable_secure_boot = optional(bool)
    }))
    software_config = optional(object({
      colab_image = optional(object({
        release_name = optional(string)
      }))
      env = optional(list(object({
        name  = optional(string)
        value = optional(string)
      })))
      post_startup_script_config = optional(object({
        post_startup_script          = optional(string)
        post_startup_script_behavior = optional(string)
        post_startup_script_url      = optional(string)
      }))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


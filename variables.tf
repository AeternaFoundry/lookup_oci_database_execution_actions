variable "database_execution_actions_lookup" {
  description = <<EOT
Map of database_execution_actions_lookup, attributes below
Required:
    - compartment_id
Optional:
    - display_name
    - execution_window_id
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id      = string
    display_name        = optional(string)
    execution_window_id = optional(string)
    state               = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}


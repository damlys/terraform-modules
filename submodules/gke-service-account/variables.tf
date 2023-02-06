variable "name" {
  description = "Service account name."
  type        = string
  validation {
    condition     = length(var.name) >= 6 && length(var.name) <= 30
    error_message = "Value must be between 6 and 30 characters."
  }
}

variable "namespace" {
  description = "Kubernetes namespace name."
  type        = string
}

variable "project" {
  description = "Google Cloud Platform project ID."
  type        = string
}

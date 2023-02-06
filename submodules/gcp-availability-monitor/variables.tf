variable "project" {
  description = "Google Cloud Platform project ID."
  type        = string
}

variable "request_method" {
  type    = string
  default = "GET"
}
variable "request_host" {
  type = string
}
variable "request_path" {
  type    = string
  default = "/health"
}
variable "response_content" {
  type    = string
  default = "Healthy."
}

variable "notification_emails" {
  type    = list(string)
  default = []
}

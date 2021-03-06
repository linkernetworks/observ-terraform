variable "suffix" {
  description = "Suffix of all resources"
  type        = string
  validation {
    condition     = can(regex("^[0-9a-z]+$", var.suffix))
    error_message = "For the suffix value only a-z and 0-9 are allowed."
  }
}

variable "image_tag" {
  description = "Tag of this project"
  type        = string
}

variable "dns" {
  description = "DNS of this project"
  type        = string
}

variable "ice_uri" {
  description = "ICE server URI of this project"
  type        = string
  default     = "stun:stun.l.google.com:19302"
}

variable "ice_user" {
  description = "ICE server user of this project"
  type        = string
  default     = ""
}

variable "ice_password" {
  description = "ICE server password of this project"
  type        = string
  default     = ""
}

variable "web_admin" {
  description = "Admin email and password"

  type = object({
    email    = string
    password = string
  })
  default = {
    email    = ""
    password = ""
  }
}

variable "web_secret_key" {
  description = "Web server secret key to hash password"
  type        = string
}

variable "web_fcm_api_key" {
  description = "Web server FCM api key"
  type        = string
}

variable "web_sendgrid_api_key" {
  description = "Web server SendGrid api key"
  type        = string
}

variable "web_host_url" {
  description = "Web server host url (used in Email), maybe can replace by dns"
  type        = string
  default     = ""
}

variable "web_email_lang" {
  description = "Web email language (en or zh)"
  type        = string
  default     = "en"
}

variable "web_kubeflow_host" {
  description = "Kubeflow host URL"
  type        = string
  default     = ""
}

variable "web_kubeflow_pipeline_name" {
  description = "Kubeflow pipeline name"
  type        = string
  default     = ""
}

variable "web_kubeflow_pipeline_version_name" {
  description = "Kubeflow pipeline version name"
  type        = string
  default     = ""
}

variable "web_kubeflow_experiment_name" {
  description = "Kubeflow pipeline experiment name"
  type        = string
  default     = ""
}

variable "web_kubeflow_experiment_namespace" {
  description = "Kubeflow pipeline experiment name"
  type        = string
  default     = ""
}

variable "storage_account_rg" {
  description = "Resource group of storage account"
  type        = string
}

variable "storage_account_name" {
  description = "Name of storage account"
  type        = string
}

variable "iothub_name" {
  description = "Name of iothub"
  type        = string
}

variable "iothub_rg" {
  description = "Resource group of iothub"
  type        = string
}

variable "iothub_device_id" {
  description = "IoTHub Device Id"
  type        = string
}

variable "cr_server" {
  description = "Server name of existing private container registry"
  type        = string
}

variable "cr_username" {
  description = "Username of existing private container registry"
  type        = string
}

variable "cr_password" {
  description = "Password of existing private container registry"
  type        = string
}

variable "az_pg_server" {
  description = "Azure PostgreSQL server Name"
  type        = string
}

variable "az_pg_server_rg" {
  description = "Resource group of Azure PostgreSQL server"
  type        = string
}

variable "az_pg_db_password" {
  description = "Password of role with privilege granted to database of Azure PostgreSQL server"
  type        = string
}

variable "eventhub_namespace" {
  description = "EventHub namespace"
  type        = string
}

variable "eventhub_namespace_rg" {
  description = "Resource group of EventHub namespace"
  type        = string
}

variable "eventhub" {
  description = "Name of EventHub"
  type        = string
}

variable "eventhub_consumer_group" {
  description = "Name of EventHub Consumer Group"
  type        = string
}

variable "eventhub_authorization_rule" {
  description = "Name of EventHub Authorization Rule"
  type        = string
}

variable "linebot_access_token" {
  description = "Linebot access token"
  type        = string
  default     = ""
}

variable "linebot_channel_secret" {
  description = "Linebot channel secret"
  type        = string
  default     = ""
}

variable "web_edition" {
  description = "Web server edition"
  type        = string
  default     = "community"
}

variable "eventhub_type" {
  description = "eventhub type"
  type        = string
  default     = ""
}

variable "mqtt_topic" {
  description = "mqtt topic"
  type        = string
  default     = ""
}

variable "mqtt_broker" {
  description = "mqtt broker"
  type        = string
  default     = ""
}

variable "web_admin_email" {
  description = "Web server admin email"
  type        = string
}

variable "web_admin_password" {
  description = "Web server admin password"
  type        = string
}

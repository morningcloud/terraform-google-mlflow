variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "The Google Cloud region in which to provision the resources."
  type        = string
}

variable "zone" {
  description = "The Google Cloud zone in which to provision the resources."
  type        = string
}

variable "artifacts_bucket" {
  description = "GCP bucket to store artifacts"
  type        = string
  default     = "mlflow-artifacts-store"
}

variable "mlflow_docker_image" {
  description = "Docker image to use for MLflow"
  type        = string
}

variable "network_name" {
  description = "if you have a prefered network to use enter it if not default is used"
  type        = string
  default     = "default"
}

variable "storage_uniform" {
  description = "Uniform access level to be activated for the buckets"
  type        = string
}

variable "brand_name" {
  description = "The name of the brand"
  type        = string
}
variable "support_email" {
  description = "Person or group to contact in case of problems"
}

variable "oauth_client_id" {
  description = "The OAuth client ID (Leave blank if you entered 1 for the create_brand variable)"
  type        = string
}
variable "oauth_client_secret" {
  description = "The OAuth client secret (Leave blank if you entered 1 for the create_brand variable)"
  type        = string
}
variable "lb_name" {
  description = "The name of the load balancer"
  type        = string
  default     = "mlflow-lb"
}
variable "domain" {
  description = "The domain name to run the load balancer on"
  type        = string
}

variable "webapp_users" {
  description = "List of people who can acess the mlflow web app. e.g. [user:jane@example.com, group:people@example.com]"
  type        = list(string)
}

variable "db_instance" {
  description = "name of database instance you want to create"
  type        = string
  default     = "mlflow"
}

variable "db_name" {
  description = "The name of the database instance to create."
  type        = string
  default     = "mlflow_db"
}

variable "db_version" {
  description = "The version of the database to create."
  type        = string
  default     = "POSTGRES_13"
}

variable "db_tier" {
  description = "The tier of the database to create."
  type        = string
  default     = "df-f1-micro"
}

variable "network_self_link" {
  description = "if you have a private network link to use enter it if not leave it empty one will be created for you"
  type        = string
}

variable "vpc_connector_name" {
  description = "The existing VPC connector name to use for cloud run service"
  type = string
}
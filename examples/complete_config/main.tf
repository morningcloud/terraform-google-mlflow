module "mlflow" {
  #source  = "teamdatatonic/mlflow/google"
  source  = "../../../terraform-google-mlflow"
  #version = "1.1.0"

  project_id          = var.project_id
  region              = var.region
  zone                = var.zone
  mlflow_docker_image = var.mlflow_docker_image
  network_name        = var.network_name
  brand_name          = var.brand_name
  support_email       = var.support_email
  oauth_client_id     = var.oauth_client_id
  oauth_client_secret = var.oauth_client_secret
  domain              = var.domain
  webapp_users        = var.webapp_users
  storage_uniform     = var.storage_uniform
  db_instance  = var.db_instance
  db_name             = var.db_name
  db_version          = var.db_version
  db_tier             = var.db_tier
  network_self_link   = var.network_self_link
  vpc_connector_name  = var.vpc_connector_name
}

module "data_bucket" {
  source = "../../modules/compliant-gcs-bucket"

  gcp_project        = "cgep-508001"
  project_label      = "cgep-lab"
  environment        = "prod"
  retention_days     = 30   # FAILS: prod requires >= 365
  bucket_name_suffix = "should-never-exist"
}
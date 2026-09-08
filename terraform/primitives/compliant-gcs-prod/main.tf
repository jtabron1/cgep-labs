module "data_bucket" {
  source = "../../modules/compliant-gcs-bucket"

  gcp_project        = "cgep-508001"
  project_label      = "cgep-lab"
  environment        = "prod"
  retention_days     = 365
  bucket_name_suffix = "dev-data-jt-test-bucket-cgep"   # use your personal suffix, e.g. prod-data-<your-initials>
}
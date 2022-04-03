provider "google" {
 credentials = file("./gcp-secrets-create/db_sa.json")
 project     = "dev-project-345909"
 region      = "asia-southeast1"
}

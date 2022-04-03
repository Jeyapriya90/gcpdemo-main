provider "google" {
 credentials = file("./gcp-secrets-create/dev-sa.json")
 project     = "dev-project-345909"
 region      = "asia-southeast1"
}

provider "google-beta" {
 credentials = file("./gcp-secrets-create/dev-sa.json")
 project     = "dev-project-345909"
 region      = "asia-southeast1"
}

#########################
## GCP Provider - Main ##
#########################
provider "google" {
 credentials = file("./gcp-secrets-create/dev-project-345909-e4a91809a5da.json")
 project     = "dev-project-345909"
 region      = "asia-southeast1"
}

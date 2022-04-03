resource "google_secret_manager_secret" "local-admin-password" {
  provider = google-beta

  secret_id   = "local-admin-password"

  replication {
    automatic = true
  }
  #depends_on = [google_project_service.secretmanager]
}

# Add the secret data for local-admin-password secret
resource "google_secret_manager_secret_version" "local-admin-password" {
  secret = google_secret_manager_secret.local-admin-password.id
  secret_data = "Sup3rS3cur3P@ssw0rd3"
}

data "google_secret_manager_secret_version" "local-admin-password" {
  provider = google-beta
  secret   = "local-admin-password"
  #version  = "1"
}

output "local-admin-password" {
  value = data.google_secret_manager_secret_version.local-admin-password.secret_data
  sensitive = true
}

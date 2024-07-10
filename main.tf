module "IAM" {
  source = "github.com/StrikerASD/IAM"

  project_id = "sb-izal-20240703-111957"

  service_accounts = {
    "cluster-service-account@sb-izal-20240703-111957.iam.gserviceaccount.com" = {
      display_name = "Cluster SA"
      roles        = [
        "roles/viewer",
        "roles/storage.admin"
      ]
    },
    "jenkins-gke@sb-izal-20240703-111957.iam.gserviceaccount.com" = {
      display_name = "Jenkins builder SA"
      roles        = [
        "roles/cloudkms.admin",
        "roles/cloudkms.verifier",
        "roles/container.admin",
        "roles/resourcemanager.projectIamAdmin",
        "roles/owner",
        "roles/iam.serviceAccountAdmin",
        "roles/iam.serviceAccountTokenCreator",
        "roles/storage.admin"
      ]
    }
    "service-376765086748@gs-project-accounts.iam.gserviceaccount.com" = {
      display_name = "Cloud Storage SA"
      roles        = [
        "roles/cloudkms.cryptoKeyEncrypterDecrypter"
      ]
    }
  }
}

output "service_account_emails" {
  value = module.service_accounts.service_account_emails
}

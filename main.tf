module "IAM" {
  source = "github.com/StrikerASD/IAM_Module"

  project_id = "sb-izal-20240703-111957"

  service_accounts = {
    "107500591655451760893" = {
      display_name = "Cluster SA"
      roles        = [
        "roles/viewer",
        "roles/storage.admin"
      ]
    },
    "103483743575851319174" = {
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

# output "service_account_emails" {
#   value = module.service_accounts.service_account_emails
# }

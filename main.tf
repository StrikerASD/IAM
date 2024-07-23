/*
  IMPORTANT NOTE. Before using this repository to create service accounts and access for them, one action needs
  to take place beforehand. iam-sa Service Account needs to be created manually in GCP console and those roles
  needs to be granted: Create Service Accounts, Delete Service Accounts, Project IAM Admin.
*/

module "IAM" {
  source = "github.com/StrikerASD/IAM_Module"

  project_id = "sb-izal-20240722-110030"
  service_accounts = {
    "cluster-service-account" = "cluster service account"
    #     "jenkins-service-account" = "Jenkins service account"
  }

  roles = {
    "roles/viewer"                          = "serviceAccount:cluster-service-account@sb-izal-20240703-111957.iam.gserviceaccount.com"
    "roles/cloudkms.admin"                  = "serviceAccount:jenkins-gke@sb-izal-20240703-111957.iam.gserviceaccount.com"
    "roles/cloudkms.verifier"               = "serviceAccount:jenkins-gke@sb-izal-20240703-111957.iam.gserviceaccount.com"
    "roles/container.admin"                 = "serviceAccount:jenkins-gke@sb-izal-20240703-111957.iam.gserviceaccount.com"
    "roles/resourcemanager.projectIamAdmin" = "serviceAccount:jenkins-gke@sb-izal-20240703-111957.iam.gserviceaccount.com"
    "roles/owner"                           = "serviceAccount:jenkins-gke@sb-izal-20240703-111957.iam.gserviceaccount.com"
    "roles/iam.serviceAccountAdmin"         = "serviceAccount:jenkins-gke@sb-izal-20240703-111957.iam.gserviceaccount.com"
    "roles/iam.serviceAccountTokenCreator"  = "serviceAccount:jenkins-gke@sb-izal-20240703-111957.iam.gserviceaccount.com"
    "roles/storage.admin"                   = "serviceAccount:jenkins-gke@sb-izal-20240703-111957.iam.gserviceaccount.com"
  }
}

output "service_account_role_output" {
  value = module.IAM.service_account_role_output
}

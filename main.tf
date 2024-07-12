/*
  IMPORTANT NOTE. Before using this repository to create service accounts and access for them, one actions needs
  to take place beforehand. iam-sa Service Account needs to be created manually in GCP console and those roles
  needs to be granted: Create Service Accounts, Delete Service Accounts, Project IAM Admin. There will be other
  roles needed like adding roles for Service Accounts. TO BE UPDATED
*/

module "IAM" {
  source = "github.com/StrikerASD/IAM_Module"

  project_id = "sb-izal-20240703-111957"
  service_accounts = {
    "cluster-service-account" = "cluster service account"
#     "jenkins-service-account" = "Jenkins service account"
  }

  roles = {
    "roles/viewer" = "serviceAccount:cluster-service-account@sb-izal-20240703-111957.iam.gserviceaccount.com"
  }

#   service_accounts = {
#     "cluster-service-account" = {
#       display_name = "Cluster SA"
#       roles        = [
#         "roles/viewer",
#         "roles/storage.admin"
#       ]
#     },
#     "jenkins-gke" = {
#       display_name = "Jenkins builder SA"
#       roles        = [
#         "roles/cloudkms.admin",
#         "roles/cloudkms.verifier",
#         "roles/container.admin",
#         "roles/resourcemanager.projectIamAdmin",
#         "roles/owner",
#         "roles/iam.serviceAccountAdmin",
#         "roles/iam.serviceAccountTokenCreator",
#         "roles/storage.admin"
#       ]
#     }
  }

output "service_account_role_output" {
  value = module.IAM.service_account_role_output
}

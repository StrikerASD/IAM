module "IAM" {
  source = "github.com/StrikerASD/IAM_Module"

  project_id = "sb-izal-20240703-111957"
  service_accounts = {
    "cluster-service-account" = "cluster service account"
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

locals {
  env               = "c"
  app_name          = "myapp" # APP_CHANGE_ME - Limit to 6 characters
  business_code     = "222ma" # BC_CHANGE_ME  - Limit to 4-6 caracters
  app1_project_name = "prj-${local.business_code}-${local.env}-${local.app_name}"

  app1_service_apis = [
    "compute.googleapis.com"
  ]
  project_terraform_labels = {
    "env" = "cis"
  }

  admin_roles = [
    "roles/editor",
    "roles/resourcemanager.projectIamAdmin",
    "roles/storage.objectAdmin"
  ]

  developer_roles = [
    "roles/editor",
    "roles/storage.objectAdmin"
  ]

  devops_roles = [
    "roles/editor",
    "roles/storage.objectAdmin"
  ]

  has_sa = true

}
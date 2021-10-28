terraform {
  backend "gcs" {
    bucket = "bkt-b-zzzz-tfstate-tfstate"
    prefix = "tf_state_organization"
  }
}

provider "google" {
  impersonate_service_account = data.terraform_remote_state.bootstrap.outputs.bootstrap_automation_service_account
}

data "terraform_remote_state" "bootstrap" {
  backend = "gcs"
  config = {
    bucket = "bkt-b-zzzz-tfstate-tfstate"
    prefix = "tf_state_bootstrap"
  }
}

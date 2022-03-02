terraform {
  backend "gcs" {
    bucket = "bkt-b-mamz-tfstate-5030"
    prefix = "tf_state_bootstrap"
  }
}

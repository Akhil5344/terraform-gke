terraform {
  backend "gcs" {
    bucket  = "my-terraform-state-gke" # Change this!
    prefix  = "terraform/state/cluster-1"
  }
}

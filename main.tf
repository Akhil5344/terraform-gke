provider "google" {
  project = var.project_id
  region  = var.region
}

module "network" {
  source      = "./modules/vpc"
  project_id  = var.project_id
  region      = var.region
}

module "gke" {
  source      = "./modules/gke"
  project_id  = var.project_id
  region      = var.region
  cluster_name = "cluster-1"
  vpc_id       = module.network.vpc_id
  subnet_id    = module.network.subnet_id
}

terraform {
  backend "remote" {
    organization = "giautm"
    workspaces {
      name = "hashimash"
    }
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.75.0"
    }
  }
}



provider "google" {
  project = var.google_project
  region  = var.region
}

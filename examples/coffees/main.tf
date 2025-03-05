terraform {
  required_providers {
    hashicups = {
      source = "/Users/gaby/Desktop/terraform scafolding/terraform-provider-hashicups/internal/provider"
    }
  }
}

provider "hashicups" {
  host = "http://localhost:19090"
  username = "education"
  password = "test123"
}

data "hashicups_coffees" "edu" {}

output "edu_coffees" {
  value = data.hashicups_coffees.edu
}
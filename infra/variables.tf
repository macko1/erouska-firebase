variable "region" {
  default = "europe-west1"
} # The gcp region we want to be working with


variable "env" {
  default = "dev"
} # This is a "prefix" which we will add to the name of everything tag to everything

variable "project" {}


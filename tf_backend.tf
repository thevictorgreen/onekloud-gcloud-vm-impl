terraform {
  backend "gcs" {
    credentials = "credentials.json"
    bucket  = "gcp-adventure-02"
    prefix  = "dev/virtual_machine/terraform.tfstate"
  }
}
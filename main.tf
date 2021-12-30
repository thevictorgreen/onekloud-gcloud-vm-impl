data "terraform_remote_state" "dev_vpc" {
  backend = "gcs"
  config = {
    credentials = "credentials.json"
    bucket      = "gcp-adventure-02"
    prefix      = "dev/vpc/terraform.tfstate"
  }
}

module "public_instance_01" {
  source = "../../modules/virtual_machine"

  vpc_id      = data.terraform_remote_state.dev_vpc.outputs.vpc_self_link
  subnet_id   = data.terraform_remote_state.dev_vpc.outputs.public_subnet_self_link
  vm_settings = var.vm_settings
}

module "private_instance_01" {
  source = "../../modules/virtual_machine"

  vpc_id      = data.terraform_remote_state.dev_vpc.outputs.vpc_self_link
  subnet_id   = data.terraform_remote_state.dev_vpc.outputs.public_subnet_self_link
  vm_settings = var.vm_settings_02
}
variable "vm_settings" {
  type = object({
    general = object({
        environment  = string
        owner        = string
        project_name = string
        region       = string
    })
    vm_cfg = object({
      name          = string
      machine_type  = string
      zone          = string
      computer_name = string
      tags          = list(string)
      image         = string
      admin_ssh_key = string
    })
    ip_cfg = object({
        has_public_ip = bool
    })
  })

  default = {
    general = {
      environment = "dev"
      owner = "data-platform"
      project_name = "gcp-adventure-02"
      region = "us-central1"
    }
    ip_cfg = {
      has_public_ip = true
    }
    vm_cfg = {
      admin_ssh_key = "vgreen:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDC/gD4Muq+vdiyHoghzpFbANIjvdF/+XJFVD2JyuOToGVqeeYemWzufEPbVJHDE0yDPUtOizJ7aEji6DIiTLHdgDw8pDRcE5rXB5KuOQLQrCUXDeHi+wqjatpJMQzlzi5tsbm6kuFCajQ00vm4XY52EJZyO8lAhtgP8lDGMcIix+lM/qxfciC/5ifs0RUabbc/3wbaLwLxv2U413s5gUrBAqUPUp7ug6tKrqUO9BPTeTWR3ACkJBdswx5EyGU9IpT/TR9iXKo04184GXUPC1BZKnww6OsxL//N3OAelfA7PXiPBP3nVL9ifqv8nQc3BBDBzeOTGrCsyV2cg/bQHfLV/DLpagk/Nd5oeiMxZCZhwymIxFdZxB0WGjVan5qOv6DDKm2oLy4YHzNQy41W/OEcBqQ22Q7Q+UpA14AQ4riQKSZ+jNNUyx5zwta1+3FbbmbX5OaNJeumha5dWWZigabfrlds/r2mKQUPyPhVbs2X5HivtkjasU0HI1KPgHfqXQE= vgreen@MacBook-Pro.local"
      computer_name = "publicinstance01"
      image         = "centos-7-v20210420"
      machine_type  = "f1-micro"
      name          = "publicinstance01"
      tags          = ["public-internet","public-firewall"]
      zone          = "us-central1-a"
    }
  }
}

variable "vm_settings_02" {
  type = object({
    general = object({
        environment  = string
        owner        = string
        project_name = string
        region       = string
    })
    vm_cfg = object({
      name          = string
      machine_type  = string
      zone          = string
      computer_name = string
      tags          = list(string)
      image         = string
      admin_ssh_key = string
    })
    ip_cfg = object({
        has_public_ip = bool
    })
  })

  default = {
    general = {
      environment = "dev"
      owner = "data-platform"
      project_name = "gcp-adventure-02"
      region = "us-central1"
    }
    ip_cfg = {
      has_public_ip = false
    }
    vm_cfg = {
      admin_ssh_key = "vgreen:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDC/gD4Muq+vdiyHoghzpFbANIjvdF/+XJFVD2JyuOToGVqeeYemWzufEPbVJHDE0yDPUtOizJ7aEji6DIiTLHdgDw8pDRcE5rXB5KuOQLQrCUXDeHi+wqjatpJMQzlzi5tsbm6kuFCajQ00vm4XY52EJZyO8lAhtgP8lDGMcIix+lM/qxfciC/5ifs0RUabbc/3wbaLwLxv2U413s5gUrBAqUPUp7ug6tKrqUO9BPTeTWR3ACkJBdswx5EyGU9IpT/TR9iXKo04184GXUPC1BZKnww6OsxL//N3OAelfA7PXiPBP3nVL9ifqv8nQc3BBDBzeOTGrCsyV2cg/bQHfLV/DLpagk/Nd5oeiMxZCZhwymIxFdZxB0WGjVan5qOv6DDKm2oLy4YHzNQy41W/OEcBqQ22Q7Q+UpA14AQ4riQKSZ+jNNUyx5zwta1+3FbbmbX5OaNJeumha5dWWZigabfrlds/r2mKQUPyPhVbs2X5HivtkjasU0HI1KPgHfqXQE= vgreen@MacBook-Pro.local"
      computer_name = "privateinstance01"
      image         = "centos-7-v20210420"
      machine_type  = "f1-micro"
      name          = "privateinstance01"
      tags          = ["private-internet","private-firewall"]
      zone          = "us-central1-a"
    }
  }
}
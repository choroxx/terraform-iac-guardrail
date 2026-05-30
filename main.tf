terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

# 正しい設定：NGINXの最新イメージを定義
resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}
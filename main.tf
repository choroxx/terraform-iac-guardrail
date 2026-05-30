terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

# わざと中身をめちゃくちゃにして、構文エラー（バグ）を仕込む
resource "docker_image" "nginx" {
  bad_attribute_named_wrong = "this_should_fail_ci"
}
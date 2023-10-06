resource "docker_image" "build" {
    name = "build"
    build {
      context = "../"
      dockerfile = "./Dockerfile"
    }
}

resource "docker_container" "container" {
    name = "container"
    image = docker_image.build.image_id
    ports {
      internal = 80
      external = 8000

    }
}

terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}
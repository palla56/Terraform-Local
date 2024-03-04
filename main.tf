terraform { 
    required_providers { 
        docker = {
         source = "kreuzwerker/docker" 
        version = ">= 2.0.0" 
        }
    }
}

provider "docker" {
    host = "unix:///var/run/docker.sock"
}

resource "docker_container" "example" {
        name = "my-container1"
        image = "nginx:latest" 
}


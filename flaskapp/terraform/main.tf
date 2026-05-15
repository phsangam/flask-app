provider "aws" {
  region = var.region
}

resource "aws_ecr_repository" "flask_app" {
  name                 = "flask-app"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Environment = var.environment
    Project     = "flask-app"
  }
}

output "ecr_repository_url" {
  value = aws_ecr_repository.flask_app.repository_url
}

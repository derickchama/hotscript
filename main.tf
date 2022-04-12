    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "bapp_server" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"

  tags = {
    Name = "terra-cloud-server"
  }
}



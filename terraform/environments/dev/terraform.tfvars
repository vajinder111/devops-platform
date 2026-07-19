vpc_cidr = "10.0.0.0/16"

vpc_name = "dev-vpc"

environment = "dev"

availability_zones = [
  "ap-south-1a",
  "ap-south-1b"
]

public_subnets = [
  "10.0.1.0/24",
  "10.0.2.0/24"
]

private_subnets = [
  "10.0.101.0/24",
  "10.0.102.0/24"
]

allowed_ip = [
  "YOUR_PUBLIC_IP/32"
]
ami_id = "ami-xxxxxxxxxxxxxxxxx"

instance_type = "t2.micro"

key_name = "your-keypair-name"
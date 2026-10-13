resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  associate_public_ip_address = true
  instance_type = "t2.micro"

  root_block_device {
    delete_on_termination = true
    volume_size           = 10
    volume_type           = "gp3"

  }
  tags = {
    Name = "exercise10_ec2"
  }
}

resource "aws_iam_policy" "policy" {
    name = "proj13_iam"
    path = "/"
    description = "my test policy"

    policy = jsonencode({
        version = "2012-10-17"
        statement = [
            {
                Action = [
                    "ec2:Describe*",
                ]
                Effect  = "Allow"
                Resource = "*"
            },
        ]
    })
}
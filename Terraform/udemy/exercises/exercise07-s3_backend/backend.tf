#state.tf
terraform {
    backend "s3" {
        bucket = "example-bucket-761f7477d609 "
        key    = "04-backends/state.tfstate"
        region = "us-east-1"
    }
}
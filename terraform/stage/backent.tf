terraform {
  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "nbt-bucket"
    region     = "ru-central1"
    key        = "prod/prod.tfstate"
    access_key = "pOYu-2TTLioyv7nqLBwF"
    secret_key = "g1zgyUqYNZEfHfdYLmTzQnL8VgvbHYr-9fA9xIQJ"


    skip_region_validation      = true
    skip_credentials_validation = true
  }
}

terraform {
  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "nbt-bucket"
    region     = "ru-central1"
    key        = "~/otus/temp/bucket.tfstate"
    access_key = "access_key"
    secret_key = "secret_key"


    skip_region_validation      = true
    skip_credentials_validation = true
  }
}

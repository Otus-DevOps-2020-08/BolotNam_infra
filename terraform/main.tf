provider "yandex" {
  service_account_key_file = var.service_account_key_file
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone      = var.zone
}

resource "yandex_compute_instance" "app" {
  count = var.instsnce_count
  name  = "reddit-app-${count.index}"

  resources {
    cores  = 2
    memory = 2
  }

 boot_disk {
   initialize_params {
     # Указать id образа созданного в предыдущем домашем задании
     image_id = var.image_id
    }
  }

  network_interface {
    # Указан id подсети default-ru-central1-a
    subnet_id = var.subnet_id
    nat       = true
  }

  metadata = {
  ssh-keys = "ubuntu:${file(var.public_key_path)}"
  }

  provisioner "file" {
    source = "files/puma.service"
    destination = "/tmp/puma.service"
  }
  provisioner "remote-exec" {
    script = "files/deploy.sh"
  }
  connection {
  type = "ssh"
  host = yandex_compute_instance.app[count.index]
  user = "ubuntu"
  agent = false
  # путь до приватного ключа
  private_key = file(var.private_key_path)
  }
}

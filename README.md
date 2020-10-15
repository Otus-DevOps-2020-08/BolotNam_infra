ДЗ №8 Ansible-2
1. Деплоим mongod с помощью ansible на хост db, используем task и handlers
    деплоим с указанием хоста --limit db
2. Деплоим puma на app, также с task и handler
    деплоим с указанием хоста --limit app и тэгов
3. Деплоим ruby с помощью tasks git и bundle
4. Создаем playbook с тремя сценариями (db-app-deploy)
5. Создаем три playbook и деплоим с помощью site.yml
6. Создаем playbook packer_app.yml (для установки ruby, bundle и git) и packer_db.yml (установка mongod)
7. В директории packer создаем app.json и db.json (в них меняем секцию provisioners, указываем packer_app.yml и packer_db.yml)
8. Создаем два новых образа
9. С помощью terraform из этих образов развертываем ВМ app и db
10. проверяем все с помощью playbook site.yml

ДЗ №7
1. на удаленной ВМ. склонирован репозиторий
2. далее удалена папка reddit c репозиторием
3. далее выполнено повторное клонирование с использованием clone.yml
    разница в том что ansible отследил изменение состояния репозитория (удаление папки reddit)

ДЗ №6
выполнено с * (вынужденно)

ДЗ #5
выполнено без доп заданий.

ДЗ №4
testapp_IP = 84.201.172.198
testapp_port = 9292

YC command
yc compute instance create \
  --name reddit-app-2 \
  --hostname reddit-app-2 \
  --memory=4 \
  --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB \
  --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
  --metadata serial-port-enable=1 \
  --metadata-from-file user-data=./metadata.yaml

ДЗ №3
bastion_IP = 178.154.227.204
someinternalhost_IP = 10.130.0.25

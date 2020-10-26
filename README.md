ДЗ №9 Ansible-4
1. Установка virtualbox
2. Установка Vagrant
3. Создание файла Vagrantfile
4. Создание ВМ с помощью Vargrant
5. Доработка с помощью ролей ansible db и затем app
6. проверка что все работает http://10.10.10.20:9292
7. Задание сщ звездочкой vargrant.
8. Тестирование с помощью molecule
9. Установка molecule
10. инициализация molecule - создание файла test_default.py (тест на проверку службы mongod и присутствие записи в конфиге mongod)
11. дописал тест на прослушку по порту 27017
12. дописал использование ролей в пакере

ДЗ №8 Ansible-3
1.  инициализация ansible-galaxy
2.  настройка ролей app и db (tasks, handlers,defauls,files)
3.  измененние playbooks app.yml и db.yml для работы с ролями
4.  проверка terraform_destroy&apply + ansible-playbook site.yml
5.  перенос inventory.json в ansible окружения stage и prod (app/inventory.json-по умолчанию)
6.  настройка переменных групп-хостов group-vars
7.  настройка вывода информации об окружении
8.  реоргранизация директории ansible с проверкой (terraform rebuild и отработка playbooks)
9.  добавление роли nginx для пролушки на 80 порту и проверка
10. работа с ansible vault
11. подсмотрел как реализовать dynamic inventory (задание со *)


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

testapp_IP=84.201.172.198
testapp_port=9292

yc compute instance create \
  --name reddit-app-2 \
  --hostname reddit-app-2 \
  --memory=4 \
  --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB \
  --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
  --metadata serial-port-enable=1 \
  --metadata-from-file user-data=./metadata.yaml


Выполнено ДЗ № 2
 Основное ДЗ "Работа с вашим репозиторием. ChatOps. Интеграция с чатом"
 В процессе сделано:
Пункт 1 Добавлен файл .github/PULL_REQUEST_TEMPLATE.md
Пункт 2 Настроена проверка при коммите с помощбю хука pre-commit
Пункт 3 Настроена интерграция Github-Slack
Пункт 4 настроена интеграция Slack-Travis CI
Пункт 5 проверка test.py пройдена

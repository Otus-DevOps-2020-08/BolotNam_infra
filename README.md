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

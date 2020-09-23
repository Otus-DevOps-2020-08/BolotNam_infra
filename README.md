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

bastion_IP = 178.154.227.204
someinternalhost_IP = 10.130.0.25

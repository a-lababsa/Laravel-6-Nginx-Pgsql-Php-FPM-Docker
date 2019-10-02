sudo rm -rf storage
sudo rm -f public/storage
mkdir -p storage/framework/sessions storage/framework/views storage/framework/cache storage/app/public storage/logs
chmod -R 777 storage/*
#sudo chown -R www-data:www-data ./storage
#sudo chown -R www-data:www-data ./bootstrap/cache
#sudo chmod -R 755 ./storage
#sudo chmod -R 755 ./bootstrap/cache

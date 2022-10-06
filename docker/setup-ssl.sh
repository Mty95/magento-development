# Source: https://github.com/markshust/docker-magento/discussions/662#discussioncomment-2884348

# Install your root CA and generate key and cert

mkcert -key-file nginx.key -cert-file nginx.crt local.magento.com

# Copy the key and cert file over to your container

docker cp "./nginx.crt" "$(docker-compose ps -q app|awk '{print $1}')":/var/www/html
docker cp "./nginx.key" "$(docker-compose ps -q app|awk '{print $1}')":/var/www/html

# Set ownership and move them to the proper place in your container

docker-compose exec -T -u root app chown app:app nginx.key nginx.crt
docker-compose exec -T -u root app mv nginx.key nginx.crt /etc/nginx/certs/

# Restart your Magento environment

bin/restart
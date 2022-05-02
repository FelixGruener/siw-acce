# OpenVAS

docker run -d -it -e OV_PASSWD=123456  --name openvas -p 127.0.0.1:80:6080 -p 127.0.0.1:6443:443 vulnbe/openvas


# Portainer

docker volume create portainer_data
docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data  portainer/portainer-ce

docker stop portainer
docker rm portainer
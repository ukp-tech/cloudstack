# cloudstack

Pre-requisite:

    linux/amd64 OS ( At least 2GB Memory)
    docker

docker pull uttamkpanda/cloudstack:latest

To start the container :-

docker run --name cloudstack -d -p 8080:8080 uttamkpanda/cloudstack
wait for 5min and check the container logs in /var/lib/docker/container/

Open your browser at http://localhost:8080/client

Default login is admin:password

**Deploy a data center :-**

docker exec -ti cloudstack python /root/tools/marvin/marvin/deployDataCenter.py -i /root/setup/dev/advanced.cfg

#!/bin/bash

# -- docker instalation

sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

# docker node ls

# -- wordpress swarm stack from dockerlabs

cd ~/

git clone https://github.com/collabnix/dockerlabs

cd ~/dockerlabs/solution/viz

docker-compose up -d

# cat docker-compose.yml

# docker compose ps

cd ~/dockerlabs/solution/wordpress

# cat stack.yml 

docker stack deploy -c stack.yml mywp 

# docker service ls

# -- grow the swarm

# docker service scale mywp_wordpress=3

# docker stack ls
# docker stack rm mywp

# docker container exec -it mywp_wordpress.1.mfetkfy6p7h279gv3eobnmqrc  bash  

# -- configure wordpress service in its own node
# docker volumes ls
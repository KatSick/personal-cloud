# personal-cloud

# initial setup

1. create cloud instance with alpine linux 3.18
2. setup dns domain with wildcard mapping
3. run setup script

# deploy

You need to have access to test manager instance (ssh://xxxx@xx.xx.xx.xx) with done ssh-copy-id then:

```
export DOCKER_HOST=ssh://xxx@xxxxxx
docker-compose --project-name personal-cloud -f docker-compose.yml up --detach --build
```

# destroy (including data)

```
docker-compose --project-name personal-cloud -f docker-compose.yml stop
docker rm $(docker ps -a -q) -f
docker system prune -a -f
```

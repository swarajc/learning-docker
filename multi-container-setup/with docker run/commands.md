<!-- For 2 and 3 bind mounts are not used as they don't work as intended on windows -->

1) For running a mongo container
  - docker run --name mongodb --rm --network goals-net -v goalsDB:/data/db -e MONGO_INITDB_ROOT_USERNAME=swaraj -e MONGO_INITDB_ROOT_PASSWORD=secret mongo
2) For running the backend node server container
  - docker run --name backend --network goals-net  -v logsDB:/app/logs -v /app/node_modules -p 80:80 backend-image
3) For running frontend react server container
  - docker run --name frontend -it  -p 3000:3000 -v /app/node_modules frontend-image
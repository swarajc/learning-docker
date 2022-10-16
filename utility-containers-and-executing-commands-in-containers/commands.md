1. To enter the nodejs shell - docker run -it node\
2. To run some command that would work in the node container -\
    a. If you don't want to enter an interactive mode - `docker run node ls`\
    b. If you want to enter an interactive mode where you have to continue giving input (like npm init) - `docker run -it node npm init` (with or without -y option)\
    c. You can also run the docker container in a detached (`-d` flag) and interactive mode (`-it` flag) and then use the `docker exec` command to execute commands\ inside the container\
      a.1) `docker run -d -it node`\
      a.2) `docker exec <container_name> ls` (For commands that don't require interactive mode like ls in this case)\
      a.3) `docker exec -it <container_name> npm init` (without -y flag only; as with -y the command will be executed at once and doesn't require an interactive mode)

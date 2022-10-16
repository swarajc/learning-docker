FROM node:18-alpine

WORKDIR /app

#Commands used

# docker build . -f node-utility.Dockerfile -t node-utility-img
# docker run -d --name node-utility  -it -v "D:\Learning docker\utility-containers":/app node-utility-img
# docker exec -it node-utility npm init

# Executing these commands and following up with the required inputs gives us a package.json file on the binded directory in our
# local host machine
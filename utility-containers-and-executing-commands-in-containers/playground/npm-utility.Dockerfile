FROM node:18-alpine

WORKDIR /app

ENTRYPOINT [ "npm" ]

#Commands used

# docker build . -f npm-utility.Dockerfile -t npm-utility-img
# docker run --rm -it --name npm-utility -v "D:\Learning docker\utility-containers\:/app"  npm-utility-img init

# Executing these commands and following up with the required inputs gives us a package.json file on the binded directory in our
# local host machine
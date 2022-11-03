__Deployment__
1. Docker compose is a great tool for development but not for production.\
  a. It requires you to run all of your services on the same machine which wouldn't be good on production as different services may require different set of                  configurations like CPU, Storage.\
  b. Things which don't play a role when doing this locally start to matter in production.
  
2. Container name to IP address resolution may not work when deploying via ECS\
  a. There are many data centers of aws and hence many servers so the likeliness of your services (containers) running on the same machine are pretty low which is makes      it a bad idea to use container name which are intended to resolve to ip addresses by the docker daemon.\
  b. However there's an exception. If your containers run inside of the same task then it may(haven't tested/checked) work.

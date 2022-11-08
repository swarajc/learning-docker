__Deployment__

1. Docker compose is a great tool for development but not for production.

    a. It requires you to run all of your services on the same machine which wouldn't be good on production as different services may require different set of configurations like CPU, Storage.

    b. Things which don't play a role when doing this locally start to matter in production.
  
2. Container name to IP address resolution may not work when deploying via ECS

    a. There are many data centers of aws and hence many servers so the likeliness of your services (containers) running on the same machine are pretty low which makes it a bad idea to use container name which are intended to resolve to ip addresses by the docker daemon.
  
    b. However there's an exception. If your containers run inside of the same task then you can use the `localhost` combined with the port number to communicate with other containers in the task.

3. To automatically make the task inside a service use the updated image pushed on docker hub - Create a new revision inside a  task.

4. Whenever the task or service is updated the Public IP of the machines running the containers also changes to do something     
   about this one can create an application load balancer from the EC2 console and connect it to our cluster/service and use the domain name / DNS name in the details of the loadbalancer to access the application being served.

5. For using volumes, you can create an EFS and mount the path of the data inside the container to the a path on the EFS. This will ensure that your data survives container shutdowns.
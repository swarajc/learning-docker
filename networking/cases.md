1. Container to WWW communication\
  a. Sending a to request and receiving a response from a third party from inside of a docker container just works without any extra settings/configurations. 
2. Container to localhost machine communication\
  a. This can work by refering to the host machine url with `host.docker.internal`. For eg. If you want to communicate to a mongodb server on the host machine from	   inside the docker container you can use `host.docker.internal` to refer to the host machine inside url option of mongoClient.connect() .
	
3. Container to container communication

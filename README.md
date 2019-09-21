# sddocker
Tried and tested way of using docker in production with open source kafka version

## To build 
1. Download the Docker file in a directory of your choice. 
2. Download the apache kafka from [https://kafka.apache.org/downloads]
3. Unzip in the same directory where Dockerfile is 
4. Change the line 4 on Dockerfile with appropriate directory name
5. Run the following command to build the image from the directory where you have downloaded the Dockerfile 
```sh
docker build -t <tag name>:<verson> . # Do 
```

## To run 
Use the docker-compomse.yaml file. 
1. For each instance, create the kafka server configuration file separately 
2. Using the approriate command to start the services

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

## To run in a single machine using docker-compose
Use the docker-compomse.yaml file given in the repository as example. 
1. For each instance, create the kafka server configuration file separately 
2. For each instance of kafka update the following properties 
broker.id=<brokerid>
zookeeper.connect=<zookeper 1 container name >:2181,<zookeper 2 container name >:2181,<zookeper 3 container name >:2181
3. Use the appropriate file name in command parameter in kafka containers in docker-compose. 
4. Start with
```sh
docker-compose up -d 
```
  
## To create a topic 
1. Open the cli 

```sh
docker exec -it cli bash 

```

2. Run the following commands inside the cli 

```sh
cd opt/kafka

# Create the topic testtopic
bin/kafka-topics.sh --create --bootstrap-server kafka1:9092 --replication-factor 2 --partitions 4 --topic testtopic

#Check the topic created 
bin/kafka-topics.sh --describe --bootstrap-server kafka1:9092

```  
  
  



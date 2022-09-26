# simplepubsubapp


## About

A simple application run on Docker to showcase the usage of Kafka and Zookeeper as a publisher-subscriber tool.


## Usage

This is to demonstrate successful pub-sub mechanism and management of master node in a given cluster.

1. Start the docker image
    ``` bash
    # in main terminal
    $ ./start.sh
    ```
2. Create a topic
    ``` bash
    # in main terminal
    $ ./create-topic.sh {TOPIC_NAME_HERE}
    ```
3. Create a publisher node on one terminal and a subscriber on another
    ``` bash
    # in terminal A
    $ ./publish-topic.sh {TOPIC_NAME_HERE}

    # in terminal B
    $ ./subscribe-topic.sh {TOPIC_NAME_HERE}
    ```
4. Type messages into terminal A and see it output onto terminal B
5. Determine which kafka node is the leader for topic
    ``` bash
    # in terminal C
    $ ./describe-topic.sh {TOPIC_NAME_HERE}
    ```
6. Kill leader kafka node 
    ``` bash
    # in terminal C
    $ ./kill-kafka.sh {KAFKA_NODE_NUMBER}
    ```
7. Determine which kafka node is the new leader for topic
    ``` bash
    # in terminal C
    $ ./describe-topic.sh {TOPIC_NAME_HERE}
    ```
8. Type messages into terminal A and see it output onto terminal B to prove messaging services are still stable with leader handover
9. Once done testing, stop running the docker image
    ``` bash
    # in main terminal
    $ ./stop.sh
    ```

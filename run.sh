#!/bin/bash
mvn compile
cp src/main/resources/jms* target/classes
cp src/main/resources/config.properties target/classes
mvn compile exec:java -Dexec.classpathScope=compile -Dexec.mainClass=com.hortonworks.streaming.impl.topologies.TruckEventProcessorTopology
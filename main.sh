#!/bin/bash
echo starting...
./pico_limbo &
cd velocity
java -Xmx1024M -Xms1024M -jar velocity.jar

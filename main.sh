#!/bin/bash
echo starting...
./pico_limbo &
cd velocity
java -Xmx500M -Xms500M -jar velocity.jar

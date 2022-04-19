#!/bin/sh

echo "Experiment #1 : CPU Performance Test"

i=1
while [ $i -lt 6 ]
do
  echo "Test Run #$i"
  sysbench --test=cpu --cpu-max-prime=20000 --max-time=30 run
  i=`expr $i + 1`
  sleep 100
done

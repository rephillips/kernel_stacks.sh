#!/bin/bash 
OUTPUT_DIR=/tmp/kstacks 
SAMPLE_PERIOD=2
while true
do
for i in `ps auxww | awk '{print $2,$8}' | grep D | grep -v PID | awk '{print $1}'` ; do
if [ -n "$i" ]; then
ps -fp ${i} >> $OUTPUT_DIR/kstacktrace.out ; cat /proc/${i}/stack >> $OUTPUT_DIR/kstacktrace.out
fi
done
sleep $SAMPLE_PERIOD
done

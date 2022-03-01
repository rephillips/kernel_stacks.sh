a.) create the script:
vi kstacks.sh

#!/bin/bash 
OUTPUT_DIR=/tmp/kstacks 
SAMPLE_PERIOD=2
while true
do
for i in `ps auxww | awk '{print $2,$8}' | grep D | grep -v PID | awk '{print $1}'` ; do
if [ -n "$i" ]; then
ps -fp ${i} >> $OUTPUT_DIR/kstacktrace.out ; cat /proc/${i}/stack >> $OUTPUT_DIR/ kstacktrace.out
fi
done
sleep $SAMPLE_PERIOD
done


b.) create the OUTPUT_DIR
mkdir /tmp/kstacks


c.) give the file executable permissions
chmod +x kstacks.sh


d.) run the script ./kstacks.sh

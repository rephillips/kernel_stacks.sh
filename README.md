a.) create the script located here:
https://github.com/rephillips/kernel_stacks.sh/blob/main/kstacks.sh

vi kstacks.sh

b.) create the OUTPUT_DIR:

mkdir /tmp/kstacks


c.) give the file executable permissions:

chmod +x kstacks.sh


d.) run the script:
./kstacks.sh



note: the kstacks.sh script targets processes in "D" state. 
State "D" (uninterruptible sleep) means that the process is in kernel space (in a system call), attempting to perform IO. These processes will not respond to signals (or SIGKILL) and cannot be debugged with gdb or pstack. If you are testing this script you may get no output if there are no processes in D state which is ok

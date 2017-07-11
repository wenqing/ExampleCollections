#!/bin/bash

#$ -N Ra_795_24       # name of the Job
#$ -o /home/wwang/data_D/ogs6Example/staggered/Ra_795/parallel_results_fixed_dt/log.txt           # path to the STDOUT File
#$ -e /home/wwang/data_D/ogs6Example/staggered/Ra_795/parallel_results_fixed_dt/err.txt           # path to the STDERR File
#$ -S /bin/bash            # shell to be used
#$ -l highmem=false
#$ -l h_rt=96:00:00         # it is necessary to declare the runtime of your job
#$ -l h_vmem=10G
###$ -l centos6

#$ -pe openmpi-orte 24        # request your parallel environment and number of cores
#$ -m beas -M wenqing.wang@ufz.de

###source /etc/profile.d/000-modules.sh
export MODULEPATH="/global/apps/modulefiles:$MODULEPATH:/home/wwang/Modulues"
module load openmpi/gcc/1.8.4-2  #openmpi/intel/1.7.3-1    ###openmpi/intel/1.8.4-2

#
# cd into the directory of your mpi bin and start a mpirun
#
APP=" /home/wwang/code/ogs6/exe_petsc/bin/ogs"
/bin/echo In directory: `pwd`
/bin/echo Number of CPUs: $NSLOTS
/bin/echo File name: $1
cd /home/wwang/data_D/ogs6Example/staggered/Ra_795

##ldd $APP
##export

mpirun -np $NSLOTS $APP  /home/wwang/data_D/ogs6Example/staggered/Ra_795/Ra_795.prj -o /home/wwang/data_D/ogs6Example/staggered/Ra_795/parallel_results_fixed_dt



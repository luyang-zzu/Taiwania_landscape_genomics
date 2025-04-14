#!/bin/bash
#SBATCH -J fsc27
#SBATCH -p vip
#SBATCH -N 1
#SBATCH --cpus-per-task=32
#SBATCH --output=model3.out
#SBATCH --error=model3.err

fsc27="/public/home/tools/fastsimcoal2/fsc27"
model3="/public/home/wangyh04/yl/model3"
directory=`pwd`

if [ ! -d "$model3" ]; then
mkdir -p $model3
fi

for n in {1..100}
do

run=$model3/run$n

if [ ! -d "$run" ]; then
mkdir -p $run
fi

$fsc27 -t model3.tpl -e model3.est -n 500000 -m -L 50 -q -M -c 32 -s 0

`cp -r $directory/model3/ $run`

done


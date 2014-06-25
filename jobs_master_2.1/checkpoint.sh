#!/bin/bash

source /projects/pilot_spim/Christopher/pipeline/master


for i in $timepoint

	do
		i=`printf "%0${pad}d" "$i"`
		num=$(ls $dir/spim_TL"$i"_Angle*.tif |wc -l)

			if [ $num  -ne $num_angles ]

	then 
		echo "TL"$i": TP or angles missing"

	else 
		echo "TL"$i": Correct"

fi

done

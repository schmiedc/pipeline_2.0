#!/bin/bash

source /projects/pilot_spim/Christopher/pipeline/master

source_pattern=${dir}${source_pattern}
target_pattern=${dir}${target_pattern}

# --------------------------------------------------------

i=${first_index}
t=${first_timepoint}
t=`printf "%0${pad}d" "${t}"`

while [ $i -le $last_index ]; do

	for a in "${angles_renaming[@]}"; do
		source=${source_pattern/\{index\}/${i}}
		tmp=${target_pattern/\{timepoint\}/${t}}
		target=${tmp/\{angle\}/${a}}
		
		echo ${source} ${target}	

		#mv ${source} ${target}
		cp ${source} ${target}
		let i=i+1
		
	done
	t=$(( 10#${t} ))
	let t=t+1
	t=`printf "%0${pad}d" "${t}"`
	
done


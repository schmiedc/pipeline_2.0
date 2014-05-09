#!/bin/bash
source /projects/pilot_spim/Christopher/pipeline/master

reftp=${referencetp}
ref=registration.to_"${reftp}"
#echo "${ref}"

channel_source=${channel_source}
channel_target=${channel_target}



for i in $timepoint
do 
	i=`printf "%0${pad_resave}d" "$i"`	
	
	for a in $angles_split
  		do
   
			for end in "beads.txt" "dim" "registration" "$ref" 
   				do

		#echo $dir/registration/spim_TL"$i"_Angle"$a"_Channel"${channel_source}".tif."$end" $dir/registration/spim_TL"$i"_Angle"$a"_Channel"${channel_target}".tif."$end"
		cp $dir/registration/spim_TL"$i"_Angle"$a"_Channel1.tif."$end" $dir/registration/spim_TL"$i"_Angle"$a"_Channel0.tif."$end"
   
	done

  done

done

echo Dublication complete! Have a nice day!
exit 0

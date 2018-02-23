#!/bin/bash
# this script runs generation of series of NEMA data with varying radius of the source cyllinder

# ending of the folder which contains GATE macors
# (NEMA_511 or NEMA_PROMPT)
FEND="511"

# Name of the output folder
FOLDER="511_no_phantom"


if [ ! -d "$DIRECTORY" ]; then
  	# Control will enter here if $DIRECTORY doesn't exist.
	mkdir ${FOLDER}
fi

cd ${FOLDER}

# For loop which, specify number you want to use. They will be used to set source's radius and output files names.
# semantics:
# for [VAR] in {[START]..[STOP (max-1)]..[STEP}
# do
# 	#commands
# done


for INDEX in {1..102..5}
do
	cp -rf ../NEMA_${FEND} NEMA_${INDEX}
	cd NEMA_${INDEX}	
	python pyscript.py ${INDEX} ${FOLDER}
	# add job
	qsub -l nodes=1:ppn=40 -q a3d script.sh
	cd ..
done

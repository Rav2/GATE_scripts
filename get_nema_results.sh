# this script copies output files from gate into one given folder

# name of the input folder
IN=511_no_phantom

# prefix of the name of the input subfolders (by default it is NEMA_[INT]
IN2=NEMA_

# prefix of names of input files, in my analysis it is prompt or anni
TYPE=anni

# Name of the output folder
OUT=NEMA_no_phantom

mkdir ${OUT}
for ii in {1..100..10}
do
	cp ${IN}/${IN2}${ii}/output/${TYPE}${ii}.root ${OUT}
done

# compressing output data to tar archive
tar -zcvf ${OUT}.tar.gz ${OUT}

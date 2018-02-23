#!/usr/bin/python

import sys

# name of the file
file = open("./Output.mac", "r")
contents = file.readlines()
file.close()
# add and write necessary content
for ii in range(0, len(contents)):
    if "output/output" in contents[ii]:
        contents[ii] = contents[ii].replace("output/output", "output/anni"+sys.argv[1])
file = open("./Output.mac", "w")
contents = "".join(contents)
file.write(contents)
file.close()



# radius of the source
file = open("./Source_Point_Gamma.mac", "r")
contents = file.readlines()
file.close()
# add and write necessary content
for ii in range(0, len(contents)):
    if "/gate/source/doub/gps/radius 25.5 mm" in contents[ii]:
        contents[ii] = contents[ii].replace("/gate/source/doub/gps/radius 25.5 mm",\
         "/gate/source/doub/gps/radius "+sys.argv[1]+" mm")
file = open("./Source_Point_Gamma.mac", "w")
contents = "".join(contents)
file.write(contents)
file.close()

# bash script
file = open("./script.sh", "r")
contents = file.readlines()
file.close()
# add and write necessary content
for ii in range(0, len(contents)):
    if "NEMA_511" in contents[ii]:
        contents[ii] = contents[ii].replace("NEMA_511",\
         sys.argv[2]+"/NEMA_"+sys.argv[1])
file = open("./script.sh", "w")
contents = "".join(contents)
file.write(contents)
file.close()


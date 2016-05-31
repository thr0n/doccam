# Doccam

This repository contains the Dockerfile that has been used to create the
docker container ["doccam"](https://hub.docker.com/r/thron/doccam/)  

Doccam is an Ubuntu-cased container providing [KRoC](https://www.cs.kent.ac.uk/projects/ofa/kroc/), the occam/occam-pi language platform.

## How to enable the occam compiler tools

Just change the current working directory to /home/root/dev/occam/kroc-1.6.0:

	cd /home/root/dev/occam/kroc-1.6.0

... and run the following command (don't forget the . !)

	. /usr/local/kroc/bin/kroc-setup.sh


## How to run a HelloWorld

Create a project folder (e. g. /home/root/dev/occam/hello) and change the working directory to this newly created directory.   

Copy and paste the HelloWorld example given in the occam subdirectory and use the cat command to save it into a hello.occ file:

	cat > hello.occ << EOF
	#INCLUDE "course.module"
	PROC hello (CHAN BYTE out!)
  	  out.string ("Hello, world!*n", 0, out!)
	:
	EOF


The sourcecode above has been taken from [this repo](https://github.com/concurrency/kroc/blob/master/demos/complexity/hello.occ)  

After that you can try to compile the application using this command:

	occbuild --program hello.occ

The application can be started easily by calling the occbuild output:

	./hello 




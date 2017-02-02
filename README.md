# mpich-ubuntu-valgrind-issue
Repository for testing valgrind related bug in ubuntu. This repository uses docker.



## Installation

navigate to bin and execute `install.sh`
```sh
$ bin/install.sh
Sending build context to Docker daemon 2.048 kB
Step 1/5 : FROM ubuntu:16.04
 ---> f49eec89601e
 
...

Successfully built 467fd5b523db
```


## Testing

navigate to bin and execute `test.sh` (no need to install images again if there was no change in them)
```sh
$ bin/test.sh
========================================================================
=========================================== TESTING OPENMPI ============
========================================================================
rm -rf build
cd build && cmake .. 2>&1 1> /dev/null
cd build && make all 2>&1 1> /dev/null
-------------------------------------------------------------------
-------------------------------------------- NO MPI NO VALG -------
-------------------------------------------------------------------
su user -c "build/main"
Hello world (Rank: 0 / Host: fa784864fb37)
-------------------------------------------------------------------
-------------------------------------------- 2 MPI NO VALG --------
-------------------------------------------------------------------
su user -c "mpirun -np 2 build/main"
Hello world (Rank: 1 / Host: fa784864fb37)
Hello world (Rank: 0 / Host: fa784864fb37)

...

```

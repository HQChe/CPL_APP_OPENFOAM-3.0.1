#mpirun -np 27 python2 dummyMD_vels.py : -np 27 CPLIcoFoam -parallel -case test_vels_case
mpirun -n 27 python2 dummyMD_vels.py & PID=$!; mpirun -n 27 CPLIcoFoam -parallel -case test_vels_case ; wait $PID
reconstructPar -case test_vels_case
stressComponents -case test_vels_case
writeCellCentres -case test_vels_case

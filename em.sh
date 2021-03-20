gmx grompp -f ./scripts/em.mdp  -c bulk_ion.gro -p bulk_ion.top -o ./$rundir/em.tpr -po ./$rundir/em-out
cd $rundir
$gmxrun -v -deffnm em
cp -rf em.gro ../GO2-afterem.gro
cd ..

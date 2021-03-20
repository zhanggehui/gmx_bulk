gmx grompp -f ./$scriptsdir/nvt-equ.mdp -c GO2-afterem.gro -p bulk_ion.top \
-o ./$rundir/nvt-equ.tpr -po ./$rundir/nvt-equ-out
cd $rundir
$gmxrun -v -deffnm nvt-equ
cd ..

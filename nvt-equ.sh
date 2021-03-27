gmx grompp -f $scriptsdir/nvt-equ.mdp -c ../em/em.gro -p ../bulk_ion.top -o ./nvt-equ.tpr
$gmxrun -v -deffnm nvt-equ

gmx grompp -f $scriptsdir/npt-equ.mdp -c ../em/em.gro -p ../bulk_ion_pp.top -o ./npt-equ.tpr -maxwarn 1
$gmxrun -v -deffnm npt-equ

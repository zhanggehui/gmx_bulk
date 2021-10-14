$gmx grompp -f $scriptsdir/em.mdp -c ../bulk_ion.gro -p ../bulk_ion_pp.top -o ./em.tpr
$gmxrun -v -deffnm em

gmx grompp -f $scriptsdir/nvt-equ.mdp -c ../em/em.gro -p ../bulk_ion_pp.top -o ./nvt-equ.tpr -maxwarn 1
$gmxrun -v -deffnm nvt-equ

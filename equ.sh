$gmx grompp -f $scriptsdir/npt-equ.mdp -c ../em/em.gro -p ../bulk_ion_pp.top -o ./npt-equ.tpr
$gmxrun -v -deffnm npt-equ

cd ../
mkdir nvtequ
cd ./nvtequ

$gmx grompp -f $scriptsdir/nvt-equ.mdp -c ../nptequ/npt-equ.gro -p ../bulk_ion_pp.top -o ./nvt-equ.tpr
$gmxrun -v -deffnm nvt-equ

source $scriptsdir/rdf_func.sh

cd ../
for((i=0; i<$n_ions; i++)); do
    ion=${ions[$i]} 
    cd ./$ion/nvtequ
    ffile=nvt-equ.trr
    xvgfile=${ion}_rdf.xvg
    get_rdf $ffile $ion $xvgfile
    mv $xvgfile ../../$rundir
    rm -rf \#*
    cd ../../
done

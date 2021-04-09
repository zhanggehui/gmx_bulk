source $scriptsdir/rdf_func.sh

ions=("CS" "LI" "NA" "K")
n_ions=${#ions[@]}

cd ../
for((i=0; i<$n_ions; i++)); do
    ion=${ions[$i]} 
    cd ./$ion/nvtequ
    xvgfile=${ion}.xvg
    get_rdf $ion $xvgfile
    mv $xvgfile ../../$rundir
    rm -rf \#*
    cd ../../
done

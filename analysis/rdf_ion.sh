source $scriptsdir/rdf_func.sh

out_dir=rdf
if [ ! -d $out_dir ]; then
    mkdir $out_dir
    for((i=0; i<$n_ions; i++)); do
        ion=${ions[$i]} 
        cd ./$ion/nvtequ
        ffile=nvt-equ.trr
        xvgfile=${ion}_rdf.xvg
        get_rdf $ffile $ion $xvgfile
        mv $xvgfile ../../$out_dir
        rm -rf \#*
        cd ../../
    done
else
    echo "already exits!"
fi

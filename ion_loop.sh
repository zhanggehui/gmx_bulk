# ions=("LI_opls392" "LI_opls395" "LI_opls396" "LI_opls397" "LI_opls398" "NA" "K" "CS")
ions=("LI_opls392" "NA" "K" "CS")
n_ions=${#ions[@]}

sdir='/home/liufeng_pkuhpc/lustre3/zgh/gmx/gmx_bulk/md_scripts'
gmxrun="gmx $2 $3"

for ((i=0; i<$n_ions; i++)); do
    ion=${ions[$i]}
    if [ -d $ion ]; then
        cd $ion
        ion=${ion%%_*}
        if [ $1 == 'em' ]; then
            source /home/liufeng_pkuhpc/lustre2/zgh/sub_job/auto_run.sh \
            $gmxrun $sdir em.sh em
        elif [ $1 == 'equ' ]; then
            source /home/liufeng_pkuhpc/lustre2/zgh/sub_job/auto_run.sh \
            $gmxrun $sdir equ.sh nptequ            
        elif [ $1 == 'npt' ]; then
            source /home/liufeng_pkuhpc/lustre2/zgh/sub_job/auto_run.sh \
            $gmxrun $sdir npt-equ.sh nptequ
        elif [ $1 == 'nvt' ]; then
            source /home/liufeng_pkuhpc/lustre2/zgh/sub_job/auto_run.sh \
            $gmxrun $sdir nvt-equ.sh nvtequ
        elif [ $1 == 'rdf' ]; then
            source /home/liufeng_pkuhpc/lustre2/zgh/sub_job/auto_run.sh \
            $gmxrun $sdir/analysis rdf.sh ${ions[$i]}_rdf
        elif [ $1 == 'res_t' ]; then 
            source /home/liufeng_pkuhpc/lustre2/zgh/sub_job/auto_run.sh \
            $gmxrun $sdir/analysis residence_time.sh ${ions[$i]}_restime
        fi
        cd ../
    fi
done

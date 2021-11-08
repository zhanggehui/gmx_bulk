ions=("LI" "NA" "K" "CS")
n_ions=${#ions[@]}

sdir='/home/liufeng_pkuhpc/lustre3/zgh/gmx/gmx_bulk/md_scripts'
gmxrun="gmx $2 $3"

for ((i=0; i<$n_ions; i++)); do
    ion=${ions[$i]}
    cd $ion
        if [ $1 == 'em' ]; then
            source /home/liufeng_pkuhpc/lustre2/zgh/sub_job/auto_run.sh \
            $gmxrun $sdir em.sh em
        elif [ $1 == 'npt' ]; then
            source /home/liufeng_pkuhpc/lustre2/zgh/sub_job/auto_run.sh \
            $gmxrun $sdir npt-equ.sh nptequ
        elif [ $1 == 'nvt' ]; then
            source /home/liufeng_pkuhpc/lustre2/zgh/sub_job/auto_run.sh \
            $gmxrun $sdir nvt-equ.sh nvtequ
        elif [ $1 == 'rdf' ]; then
            source /home/liufeng_pkuhpc/lustre2/zgh/sub_job/auto_run.sh \
            $gmxrun $sdir/analysis rdf_ion.sh ${ion}_rdf
        elif [ $1 == 'res_t' ]; then 
            source /home/liufeng_pkuhpc/lustre2/zgh/sub_job/auto_run.sh \
            $gmxrun $sdir/analysis residence_time.sh ${ion}_restime
        fi
    cd ../
done

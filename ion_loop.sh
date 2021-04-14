ions=("LI" "NA" "K" "CS")
n_ions=${#ions[@]}

for ((i=1;i<2;i++)); do
    ion=${ions[$i]}
    cd $ion
    if [ $1 == 'npt' ]; then
        source /home/liufeng_pkuhpc/lustre2/zgh/sub_job/auto_run.sh \
        gmx auto 4 /home/liufeng_pkuhpc/lustre3/zgh/gmx/gmx_bulk/md_scripts npt-equ.sh nptequ
    elif [ $1 == 'nvt' ]; then
        source /home/liufeng_pkuhpc/lustre2/zgh/sub_job/auto_run.sh \
        gmx auto 4 /home/liufeng_pkuhpc/lustre3/zgh/gmx/gmx_bulk/md_scripts nvt-equ.sh nvtequ
    elif [ $1 == 'rdf' ]; then
        source /home/liufeng_pkuhpc/lustre2/zgh/sub_job/auto_run.sh \
        gmx auto 1 /home/liufeng_pkuhpc/lustre3/zgh/gmx/gmx_bulk/md_scripts/analysis rdf_ion.sh $ion
    elif [ $1 == 'res_t' ]; then 
        source /home/liufeng_pkuhpc/lustre2/zgh/sub_job/auto_run.sh \
        gmx auto 1 /home/liufeng_pkuhpc/lustre3/zgh/gmx/gmx_bulk/md_scripts/analysis residence_time.sh $ion
    fi
    cd ../
done

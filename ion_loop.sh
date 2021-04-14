ions=("LI" "NA" "K" "CS")
n_ions=${#ions[@]}

for ((i=0;i<$n_ions;i++)); do
    ion=${ions[$i]}
    cd $ion
    gmx auto 4 /home/liufeng_pkuhpc/lustre3/zgh/gmx/gmx_bulk/md_scripts npt-equ.sh nptequ
    cd ../
done

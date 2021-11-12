function get_rdf() {
    echo -e "a OW\nq" | gmx make_ndx -f nvt-equ.gro
    gmx rdf -f nvt-equ.trr -n index.ndx -norm rdf -ref $1 -sel OW -selrpos atom -seltype atom -rmax 1 -o $2 -cn cn.xvg -b 5000 -e $3
    rm -rf \#* index.ndx
}

cd ../nvtequ

ion=${rundir%%_*}
xvgfile=${ion}.xvg
get_rdf $ion $xvgfile 50000
mv $xvgfile ../$rundir
mv cn.xvg ../$rundir

cd ../
mv ./$rundir ../tmp_data/$rundir

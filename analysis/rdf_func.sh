function get_rdf() {
    echo -e "a OW\nq" | gmx make_ndx -f nvt-equ.gro
    gmx rdf -f nvt-equ.trr -n index.ndx -norm rdf -ref $1 -sel OW -selrpos atom -seltype atom -rmax 1 -b 5000 -e $3 -o $2 -cn cn.xvg
    rm -rf \#* index.ndx
}

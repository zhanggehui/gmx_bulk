function get_rdf() {
    echo -e "a OW\nq" | gmx make_ndx -f nvt-equ.gro
    gmx rdf -f nvt-equ.trr -n index.ndx -norm number_density -ref $1 -sel OW -selrpos atom -seltype atom -o $2 -b 0 -e 5000 -rmax 1
    rm -rf \#*
}

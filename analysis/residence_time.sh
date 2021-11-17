cd ../nvtequ

ion=${rundir%%_*}

echo -e "a OW\nq" | gmx make_ndx -f nvt-equ.gro
mkdir ./select
cd ./select

declare -A first_shell=(["LI"]="0.278" ["NA"]="0.32" ["K"]="0.356" ["CS"]="0.394")
echo -e "\"1st shell\" resname SOL and name OW and within ${first_shell[$ion]} of group $ion\n" | \
$gmx select -s ../nvt-equ.tpr -f ../nvt-equ.trr -n ../index.ndx -os -oc -oi -on -om -of -olt -b 5000 -e 50000

cd ../
rm -rf index.ndx
mv ./select ../$rundir

cd ../
mv ./$rundir ../tmp_data/

source ~/gmx_zgh.sh ; \
mkdir ./select ; \
echo -e "a OW\nq" | gmx make_ndx -f nvt-equ.gro ; \
cd ./select ; \
echo -e "\"1st shell\" resname SOL and name OW and within 0.32 of group NA\n" | \
gmx select -s ../nvt-equ.tpr -f ../nvt-equ.trr -n ../index.ndx -os -oc -oi -on -om -of -olt -b 5000 -e 50000 ; \
cd ../ ; \
mv ./select ../../data/

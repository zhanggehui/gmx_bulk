source $scriptsdir/rdf_func.sh

cd ../nvtequ

ion=${rundir%%_*}
xvgfile=${ion}.xvg
get_rdf $ion $xvgfile 50000
mv $xvgfile ../$rundir
mv cn.xvg ../$rundir

cd ../
mv ./$rundir ../tmp_data/$rundir

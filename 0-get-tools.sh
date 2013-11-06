## cytominr not used here ##
#echo Getting cytominr
#git clone git@github.com:broadinstitute/cytominr.git
#cd cytominr/
### July 2012, from Shantanu's Mitochondria attempt
##git checkout 72565b4e40e016d28ecad677fdc2f44c6bf65d56
### April 2013
#git checkout 40806d7ac3e1b2024984c53bd6b2687e69e4a9a3
#cd ..

echo Getting CPA profiling tools
git clone git@github.com:CellProfiler/CellProfiler-Analyst.git
cd CellProfiler-Analyst/
## July 2012, from Shantanu's Mitochondria attempt
#git checkout f8587550b395b73b1ddc477db06d66a0c280e291
## April 2013
git checkout e365d90fab95b054d64b87bc25c88b6b4f91dc4d
cd ..

echo -----------------------------------------------------------------------------
echo -----------------------------------------------------------------------------
echo Make the changes indicated below
PWD1=`pwd`
echo "PYTHONPATH=${PWD1}/CellProfiler-Analyst/:\$PYTHONPATH"
echo "echo \"list(default = function(x) {file.path('$PWD1',x)})\" > ~/.Rpackages"
echo -----------------------------------------------------------------------------
echo ----------------------------------------------------------------------------

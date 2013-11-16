#!/bin/bash
#
# Get Tools
#
# Usage:
#   . ./0-get-tools.sh
#      Enable completion in your shell to add the CPA repo to your PYTHONPATH, used by other tools.
#      You need the 'dot space dot slash' to get it into the shell.
#

## Add CPA directory to PYTHONPATH
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]
then
    echo "This script needs to be sourced!  Please use 'dot space dot slash ... <script>' "
    exit
else
    echo "script ${BASH_SOURCE[0]} is being sourced. Good!"
    export PYTHONPATH=$(pwd)/CellProfiler-Analyst/:$PYTHONPATH
fi

echo Getting cytominr
git clone git@github.com:broadinstitute/cytominr.git
cd cytominr/
## July 2012, from Shantanu's Mitochondria attempt
#git checkout 72565b4e40e016d28ecad677fdc2f44c6bf65d56
## April 2013
#git checkout 40806d7ac3e1b2024984c53bd6b2687e69e4a9a3
git checkout ## Most recent version
cd ..

echo Getting CPA profiling tools
git clone git@github.com:CellProfiler/CellProfiler-Analyst.git
cd CellProfiler-Analyst/

## July 2012, from Shantanu's Mitochondria attempt
#git checkout f8587550b395b73b1ddc477db06d66a0c280e291
## April 2013
#git checkout e365d90fab95b054d64b87bc25c88b6b4f91dc4d

## Most recent version
git checkout
cd ..

echo -----------------------------------------------------------------------------
echo -----------------------------------------------------------------------------
echo **If you are using R scripts, PLEASE RUN the changes indicated below at the command line!
echo "echo \"list(default = function(x) {file.path('$PWD1',x)})\" > ~/.Rpackages"
echo -----------------------------------------------------------------------------
echo ----------------------------------------------------------------------------


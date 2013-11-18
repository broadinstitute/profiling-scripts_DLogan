#!/bin/bash
source ./0a-SETTINGS.sh
#DBROOT=Expt_2011_12_20_44plates_BrightGph
#DATESTAMP=2013_07_17
#DDIR=../data/${DATESTAMP}_${DBROOT}
#CACHE_DIR=cache-${DATESTAMP}_${DBROOT}
#PROPDIR=../properties
#PROP_FILE=2010_05_25_Nieland_Sabatini_${DBROOT}_TRIMMED.properties
#GRPCOL=WellPlate

if [[ ! -e $DDIR ]]; then
    mkdir $DDIR
else
    echo "$DDIR not created, since it already exists."
fi

if [[ ! -e $DDIR/$CACHE_DIR ]]; then
    mkdir $DDIR/$CACHE_DIR
else
    echo "$DDIR/$CACHE_DIR not created, since it already exists."
fi

if [[ ! -e $PROPDIR ]]; then
    mkdir $PROPDIR
else
    echo "$PROPDIR not created, since it already exists."
fi

## Create cache
## '-r' means "resume"
## "usage: %prog [-r] PROPERTIES-FILE CACHE-DIR PREDICATE"
## "usage: %prog [options] PROPERTIES-FILE CACHE-DIR GROUP"
## For non-normalized data, use a blank PREDICATE, i.e. double-quotes ("")
##
## To double-check the Predicate nomenclature and get a list of metadata, try something like this MySQL query:
## SELECT DISTINCT Image_Metadata_ASSAY_WELL_ROLE FROM Expt_2013_02_19_Main_Per_Image
## PREDICATE defines the wells used for normalization, as a MySQL query WHERE clause.
python -m cpa.profiling.cache -r \
    ${PROPDIR}/${PROP_FILE} \
    ${DDIR}/${CACHE_DIR} "Image_Metadata_ASSAY_WELL_POSITION IN ('b14','c11','c15','e02','e09','e17','f01','g04','h03','h20','i21','j05','m13')"

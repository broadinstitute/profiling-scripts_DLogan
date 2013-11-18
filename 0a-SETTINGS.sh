#!/bin/bash
## DBROOT indicate the database root names (but only have to match the properties file names)
## **CHOOSE ONE DBROOT ONLY**
DBROOT=Expt_2013_02_19_Main_Plus_MissingDMSO
DATESTAMP=2013_10_15
## **NEED TO PUT PROPERTIES FILE IN PROPDIR DIRECORY**
PROP_FILE=2009_01_20_iPsNeuronal_RakeshKarmacharya_Expt_2013_10_15_Main_Plus_MissingDMSO.properties

DDIR=../data/${DATESTAMP}_${DBROOT}
CACHE_DIR=cache-${DATESTAMP}_${DBROOT}
PROPDIR=../properties
GRPCOL=PlateWell
#FILTER_CTRLS=CTRLS

echo "DBROOT=$DBROOT"
echo "DATESTAMP=$DATESTAMP"
echo "DDIR=$DDIR"
echo "CACHE_DIR=$CACHE_DIR"
echo "PROPDIR=$PROPDIR"
echo "PROP_FILE=$PROP_FILE"
echo "GRPCOL=$GRPCOL"
echo "FILTER_CTRLS=$CTRLS"

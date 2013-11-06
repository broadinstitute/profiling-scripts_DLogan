#!/bin/bash
source SETTINGS.sh
#DBROOT=2011_12_20_44plates_BrightGph
#DATESTAMP=2013_07_17
#DDIR=../data/${DATESTAMP}_${DBROOT}
#CACHE_DIR=cache-${DATESTAMP}_${DBROOT}
#PROPDIR=../properties
#PROP_FILE=2010_05_25_Nieland_Sabatini_Expt_${DBROOT}_TRIMMED.properties
#GRPCOL=WellPlate

# Create normalized, per-well mean summary
# ("usage: %prog [options] PROPERTIES-FILE CACHE-DIR GROUP")
# General form:
# python -m cpa.profiling.profile_mean \ 
# -o <output_filename> -c \ 
# --lsf-directory=.compute \
# --njobs=50 \
# --normalization=RobustLinearNormalization \
# --method=mean+std \
# --no-progress ## Added because progress bar has a bug sometimes?\
# <properties_filename> <path_to_cache> <group_name>
# My group is defined in the properties file as: group_SQL_Well = SELECT TableNumber,ImageNumber, Image_Metadata_PlateID, Image_Metadata_CPD_WELL_POSITION FROM Master_v2_Per_Image
#echo "python -m cpa.profiling.profile_mean -o ${DDIR}/PerWell_${DBROOT}_MEDIAN_nonnormed.csv -c --lsf-directory=${DDIR}/.compute --njobs=250 --normalization=DummyNormalization --method=median ${PROPDIR}/${PROP_FILE} ${DDIR}/${CACHE_DIR} ${GRPCOL}"
#exit
##ORIG
##python -m cpa.profiling.profile_mean -o ${DDIR}/PerWell_${DBROOT}_MEDIAN_nonnormed.csv -c --no-progress --lsf-directory=.compute --njobs=250 --normalization=DummyNormalization --method=median ${PROPDIR}/${PROP_FILE} ${DDIR}/${CACHE_DIR} ${GRPCOL}
python -m cpa.profiling.profile_mean -o ${DDIR}/PerWell_${DATESTAMP}_${DBROOT}_MEAN+STD_normed.csv -c --lsf-directory=${DDIR}/.compute --njobs=250 --normalization=RobustLinearNormalization --method=mean+std ${PROPDIR}/${PROP_FILE} ${DDIR}/${CACHE_DIR} ${GRPCOL}

## From 2013_02_19
#python -m cpa.profiling.profile_mean -o ${DDIR}/PerWell_AVG+STD_normed.csv -c --lsf-directory=.compute --njobs=250 --normalization=RobustLinearNormalization --method=mean+std ${DDIR}/${PROP_FILE} ${DDIR}/${CACHE_DIR} Plate_Well

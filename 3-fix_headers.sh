#!/bin/bash
source SETTINGS.sh
#DDIR=../data/2013_04_08_test
#DDIR=../data/2013_06_26_Missing_DMSO
#CURRENT_PLATE_NOMENCLATURE='Plate_Well'
#CURRENT_WELL_NOMENCLATURE=''
#FINAL_PLATE_NOMENCLATURE='PlateID'
#FINAL_PLATE_NOMENCLATURE='CPD_WELL_POSITION'
#sed -i 's/Plate_Well,,/PlateID,CPD_WELL_POSITION,/1' ${DDIR}/PerWell_AVG+STD_normed.csv
#sed -i 's/Plate_Well,,/PlateID,CPD_WELL_POSITION,/1' ${DDIR}/PerWell_AVG+STD_nonnormed.csv
sed -i 's/PlateWell,,/PlateID,CPD_WELL_POSITION,/1' ${DDIR}/PerWell_${DATESTAMP}_${DBROOT}_MEAN+STD_DMSO.csv
sed -i 's/PlateWell,,/PlateID,CPD_WELL_POSITION,/1' ${DDIR}/PerWell_${DATESTAMP}_${DBROOT}_MEAN+STD_nonnormed.csv
sed -i 's/PlateWell,,/PlateID,CPD_WELL_POSITION,/1' ${DDIR}/PerWell_${DATESTAMP}_${DBROOT}_MEAN+STD_normed.csv

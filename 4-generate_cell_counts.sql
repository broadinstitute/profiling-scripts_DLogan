## I ran this from SequelPro, then exported from their File->Export... menu. DL 2013_10_29
## The SUM() was missing originally, but corrected here.
## **ENSURE THAT THE Per_Image TABLE IS CORRECT!**

SELECT Image_Metadata_MX_PlateID AS PlateID, Image_Metadata_ASSAY_WELL_POSITION AS CPD_WELL_POSITION, 
Image_Metadata_BROAD_ID AS BROAD_ID, Image_Metadata_ASSAY_PLATE_BARCODE AS ASSAY_PLATE_BARCODE, SUM(Image_Count_Cells) AS Cell_count
FROM Expt_2013_02_19_Main_Plus_MissingDMSO_Per_Image
GROUP BY Image_Metadata_MX_PlateID, Image_Metadata_ASSAY_WELL_POSITION

## THEN SAVE TO:
## /Volumes/imaging_analysis/2009_01_20_iPSneuronalcells_SchreiberLab/2013_10_15_Main_Plus_MissingDMSO/analysis/data/2013_10_15_Expt_2013_02_19_Main_Plus_MissingDMSO/PerWell_2013_10_15_Expt_2013_02_19_Main_Plus_MissingDMSO_CellCount_DMSO.csv

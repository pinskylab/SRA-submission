SRA Submission
==============
The repo provides information on how to upload files to NCBI's Sequence Read Archive. This is a key step to progressing the goal of open science and easy access to data. Please ensure this guide is up-to-date before use. All data described in this repo regarding *Amphiprion clarkii* was collected by the Pinsky lab group.

In the event that additional help is needed in the SRA submission process, the *National Library of Medicine* uploaded a helpful tutorial to YouTube. 

[![How to Submit to SRA, A Beginner's Guide](https://img.youtube.com/vi/PTg9Ru68fc0/hqdefault.jpg)](https://youtu.be/PTg9Ru68fc0)



All *A. clarkii* raw sequence data discussed in Pinsky guide can be found under BioProject accession [PRJNA563695](https://www.ncbi.nlm.nih.gov/bioproject/PRJNA563695) and on [FigShare](https://doi.org/10.6084/m9.figshare.24653490.v1). The associated metadata can be found in this repo through the following links and guides:



## **BioProject accession [PRJNA563695](https://www.ncbi.nlm.nih.gov/Traces/study/?acc=SRP220170)**

*Uploaded Sep 2019*
- [L0255 to L2572 SRA Submission Data](https://github.com/pinskylab/SRA-submission/blob/master/amphiprion-clarkii-table1.tsv)
- [L0255 to L2572 Metadata](https://github.com/pinskylab/SRA-submission/blob/master/amphiprion-clarkii-metadata1.tsv)
- [L2754 to L3953 SRA Submission Data](https://github.com/pinskylab/SRA-submission/blob/master/amphiprion-clarkii-table2.tsv)
- [L2754 to L3953 Metadata](https://github.com/pinskylab/SRA-submission/blob/master/amphiprion-clarkii-metadata2.tsv)
- [L3953 to L5655 SRA Submission Data](https://github.com/pinskylab/SRA-submission/blob/master/amphiprion-clarkii-table3.tsv)
- [L3953 to L5655 Metadata](https://github.com/pinskylab/SRA-submission/blob/master/amphiprion-clarkii-metadata3.tsv)

*Uploaded Nov 2023*
- [L#### submission data, not previously uploaded to SRA](https://github.com/pinskylab/SRA-submission/blob/master/SRA_Upload_Nov_2023%20-%20Version%20to%20submit%20to%20SRA.tsv)
- [L#### Metadata, not previously uploaded to SRA](https://github.com/pinskylab/SRA-submission/blob/master/SRA_Upload_Nov_2023%20-%20Metadata.tsv)

*Found on FigShare, not uploaded to SRA*
> The following data was not uploaded to SRA for a number of potential reasons:
  > - Failure to associate data
  > - Non *Amphiprion clarkii* samples
  > - Metadata in unaccessible form
  > - Unable to locate metadata

## To access the metadata for the files on FigShare, please follow the following guide:
1. Access FigShare, choose sample of interest
   - Identify the Ligation_ID (LXXX) within the sample file name
   - If there are multiple Ligation_IDs in the sample name it is likely that the data failed to associate and the metadata must be manually associated
2. Access the [Sample Data old](Sample_Data_old.xlsx) sheet
3. Under the *Ligations* sheet, identify the relavant Ligation_ID of sample(s) of interest
   - Column I contains information on the associated Pool_ID
   - Column Q contains a sample traceback name
     - Ex. APCL13_014
     - Example describes taxonomic identifiers for the sample (APCL) and the year-specific collection data (13_014)
   - If the Ligation_ID is not discoverable please skip to step 5
4. In the *Samples* sheet search for the year-specific collection data information
   - This information is specific to each sample
   - If the sample is locatable through this method, review the sample taxonomic identifier to verify APCL
     - In the event the sample name does not contain APCL, it is a non *Amphiprion clarkii* sample
5. Refer to [Michelle Stuart's lab notebook](https://pinskylab.github.io/laboratory/laboratory-notebooks/)
   - Access the *Ligations* page and locate the range that contains the Ligation_ID
6. Overlay the platemaps present for the Digestion_IDs (DXXX) and the Ligation_IDs
   - The separate platemap files are meant to act as a transition from one naming scheme to the next step (i.e. DXXX to LXXX)
7. The previous association step is to be repeated with Digestion_IDs (DXXX) and Extraction_IDs (EXXX) under the *Digestion* page
8.  Similar to the previous two steps, after obtaining the Extraction_ID (EXXX), access the range page for the sample(s) of interest
9.  The *extraction.pdf* file will contain Sample_ID for all samples within the range and will need to be overlayed once again
    - This will ultimately provide you with the Sample_ID (APCLXX_XXX)
10. Follow the instructions to create the database in [LeyteBuildDB](https://github.com/pinskylab/leyteBuildDB)
    - This repo houses metadata collected during field seasons
    - Database created with R
11. The Sample_ID (APCLXX_XXX) can be searched in this database to find all associated metadata

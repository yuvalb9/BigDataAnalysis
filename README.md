# BigDataAnalysis
code repository for the final exercise in MTA's Big Data Analysis course

## Files:
* CDNOW_master.txt - The original data file for this task
* CDNOW_master_fixed.txt - The original file, with the date column format changed from yyyymmdd to yyyy-mm-dd to allow simpler import to Hive.
* CDNOW_master_final.txt - The RFM scored file.
* clustering_centers.txt - The centers of the KMeans (k=4) run on the scored RFM data.
* hive_script - The script run by Hive to calculate the score of the RFM data.
* pyspark_clustering.py - The script run by spark-submit, running the KMeans (k=4) algorithm on the RFM scored file.
* run_analysis.sh - A bash script running the diffrent steps together.

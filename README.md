# BigDataAnalysis
code repository for the final exercise in MTA's Big Data Analysis course

## Files:
- [CDNOW_master.txt] - The original data file for this task
- [CDNOW_master_fixed.txt] - The original file, with the date column format changed from yyyymmdd to yyyy-mm-dd to allow simpler import to Hive.
- [CDNOW_master_final.txt] - The RFM scored file.
- [clustering_centers.txt] - The centers of the KMeans (k=4) run on the scored RFM data.
- [hive_script] - The script run by Hive to calculate the score of the RFM data.
- [pyspark_clustering.py] - The script run by spark-submit, running the KMeans (k=4) algorithm on the RFM scored file.
- [run_analysis.sh] - A bash script running the diffrent steps together.



## Consideration made:
- The data contains 23,570 records spanning from 1997-01-01 to 1998-06-30.

- to decide on cut-off date for the data, two histograms were created:
- histograms of purchases per month: 
```
 Year    Month    # purchases
 1997    1       8928
 1997    2       11272
 1997    3       11598
 1997    4       3781
 1997    5       2895
 1997    6       3054
 1997    7       2942
 1997    8       2320
 1997    9       2296
 1997    10      2562
 1997    11      2750
 1997    12      2504
 1998    1       2032
 1998    2       2026
 1998    3       2793
 1998    4       1878
 1998    5       1985
 1998    6       2043
```
- histograms of revenue per month: 
```
Year    Month    # purchases
1997    1       299060.17
1997    2       379590.03
1997    3       393155.27
1997    4       142824.49
1997    5       107933.30
1997    6       108395.87
1997    7       122078.87
1997    8        88367.69
1997    9        81948.79
1997    10       89780.76
1997    11      115448.63
1997    12       95577.34
1998    1        76756.77
1998    2        77096.95
1998    3       108970.14
1998    4        66231.51
1998    5        70989.65
1998    6        76109.29
```

we need to cut off after March 1997, this allows us to cut all data from 10 months ago, to simplify the recency measure.







   [CDNOW_master.txt]: <https://raw.githubusercontent.com/yuvalb9/BigDataAnalysis/blob/master/CDNOW_master.txt>
   [CDNOW_master_fixed.txt]: <https://raw.githubusercontent.com/yuvalb9/BigDataAnalysis/blob/master/CDNOW_master_fixed.txt>
   [CDNOW_master_final.txt]: <https://raw.githubusercontent.com/yuvalb9/BigDataAnalysis/blob/master/CDNOW_master_final.txt> 
   [clustering_centers.txt]: <https://raw.githubusercontent.com/yuvalb9/BigDataAnalysis/blob/master/clustering_centers.txt> 
   [hive_script]: <https://raw.githubusercontent.com/yuvalb9/BigDataAnalysis/blob/master/hive_script> 
   [pyspark_clustering.py]: <https://raw.githubusercontent.com/yuvalb9/BigDataAnalysis/blob/master/pyspark_clustering.py>
   [run_analysis.sh]: <https://raw.githubusercontent.com/yuvalb9/BigDataAnalysis/blob/master/run_analysis.sh> 

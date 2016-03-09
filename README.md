# BigDataAnalysis
code repository for the final exercise in MTA's Big Data Analysis course

## Files:
- [CDNOW_master.txt] - The original data file for this task
- [CDNOW_master_fixed.txt] - The original file, with the date column format changed from yyyymmdd to yyyy-mm-dd to allow simpler import to Hive.
- [CDNOW_master_final.txt] - The RFM scored file.
- [CDNOW_master_final_clustered.txt] - the RFM scored file, with the clustering from the centers given in clustering_centers.txt.
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
Year    Month    sum of revenue
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

- The following are the amount of users per RFM score (calculated as R+F+M=score).
![alt text][RFMScore]
- Analyzing the the graph shows that 40% of consumers have a RFM score of 12 or more, while only 20%-40% have a RFM score of 5 to 8. This means that for the 20%-40% of consumer with the RFM score of 6-11, we can try and engage to increase the TPV from them.

- The following are the amount of users per RFM score (calculated as R+F+M=score), split by cluster id.
![alt text][RFMScoreCluster]
- Analyzing the the graph shows that:
  - Cluster #2 is of the top consumers.
  - Cluster #3 is of the least valuable consumers.
  - Cluster #1 and #4 are the median consumers - while cluster #1 might be of users more relavant to enagage.




   [RFMScoreCluster]: https://raw.githubusercontent.com/yuvalb9/BigDataAnalysis/master/num.of.users.vs.RFM.Score.by.assigned.cluster.png "# of users vs. RMF score by cluster id"
   [RFMScore]: https://raw.githubusercontent.com/yuvalb9/BigDataAnalysis/master/num.of.users.vs.RFM.Score.png "# of users vs. RMF score"
   [CDNOW_master.txt]: <https://raw.githubusercontent.com/yuvalb9/BigDataAnalysis/master/CDNOW_master.txt>
   [CDNOW_master_fixed.txt]: <https://raw.githubusercontent.com/yuvalb9/BigDataAnalysis/master/CDNOW_master_fixed.txt>
   [CDNOW_master_final.txt]: <https://raw.githubusercontent.com/yuvalb9/BigDataAnalysis/master/CDNOW_master_final.txt> 
   [CDNOW_master_final_clustered.txt]: <https://raw.githubusercontent.com/yuvalb9/BigDataAnalysis/master/CDNOW_master_final_clustered.txt> 
   [clustering_centers.txt]: <https://raw.githubusercontent.com/yuvalb9/BigDataAnalysis/master/clustering_centers.txt> 
   [hive_script]: <https://raw.githubusercontent.com/yuvalb9/BigDataAnalysis/master/hive_script> 
   [pyspark_clustering.py]: <https://raw.githubusercontent.com/yuvalb9/BigDataAnalysis/master/pyspark_clustering.py>
   [run_analysis.sh]: <https://raw.githubusercontent.com/yuvalb9/BigDataAnalysis/master/run_analysis.sh> 

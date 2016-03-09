
awk '// {print $1 "\t" substr($2,1,4) "-" substr($2,5,2) "-" substr($2,7,2) "\t" $3 "\t" $4 }' CDNOW_master.txt > CDNOW_master_fixed.txt

hadoop fs -rm -r -f /mta_bigdata
hadoop fs -mkdir /mta_bigdata
hadoop fs -put CDNOW_master_fixed.txt /mta_bigdata/CDNOW_master.txt
hadoop fs -chmod 777 /mta_bigdata/CDNOW_master.txt  /mta_bigdata/

hive < hive_script

hive -e 'select * from mtabigdata.cdnow_user_final;' >  CDNOW_master_final.txt
spark-submit pyspark_clustering.py > clustering_centers.txt

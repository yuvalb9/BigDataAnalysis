from pyspark.mllib.clustering import KMeans, KMeansModel
from numpy import array
from math import sqrt
from pyspark import SparkContext

sc =SparkContext()

# Load and parse the data
data = sc.textFile("CDNOW_master_final.txt")
parsedData = data.map(lambda line: array([float(x) for x in line.split('\t')[1:]]))

# Build the model (cluster the data)
clusters = KMeans.train(parsedData, 4, maxIterations=10, runs=10, initializationMode="random")

i = 1
for center in clusters.centers:
	print "center_%d :"%(i) , center
	i+=1
	

exit()


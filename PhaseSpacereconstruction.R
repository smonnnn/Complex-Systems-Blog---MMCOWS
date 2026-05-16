
library(nonlinearTseries)
library(readr)
library(tseriesChaos)
library(nonlinearTseries)
library(plot3D)
library(rgl)
cbt_df <- read_csv("C:/Users/Admin/Desktop/sensor_data/main_data/cbt/C01.csv")
temperature_vector <- cbt_df$temperature_C
tau.acf <- timeLag(temperature_vector, technique = "acf", lag.max = 100, do.plot = T)
print(tau.acf)
tau.ami <- timeLag(temperature_vector, technique ="ami", lag.max = 100, do.plot = T)
print(tau.ami)
#determine the appropriate time lag ACF Linear (70) AMI Non Linear (12)
fnn.out = false.nearest(temperature_vector, m = 15, d = tau.ami, t = 50, eps = sd(temperature_vector)/10 )
plot(fnn.out)
#test ACF 
fnn.out = false.nearest(temperature_vector, m = 15, d = tau.acf, t = 50, eps = sd(temperature_vector)/10 )
plot(fnn.out)
#FNN plot couldnt deal with too much noise didnt fall down like the plot is supposed to trying it with Cao method 
emb.dim = estimateEmbeddingDim(temperature_vector, time.lag = tau.ami, max.embedding.dim = 15)
print(emb.dim)
#found 3 Dimensions
cbt.ps <- buildTakens(temperature_vector,emb.dim,tau.ami)
head(cbt.ps, n=12)
#plotting 2D 
plot(cbt.ps)
#plotting all dimensions 3D
lines3D(cbt.ps[,1],cbt.ps[,2],cbt.ps[,3], t="l", col="blue", asp=1)
#Plotting 3D popup window of the data
plot3d(cbt.ps[,1],cbt.ps[,2],cbt.ps[,3], t="l", col="blue", size=.5)



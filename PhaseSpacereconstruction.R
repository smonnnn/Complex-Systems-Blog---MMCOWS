
library(readr)
library(tseriesChaos)
library(nonlinearTseries)
library(plot3D)
library(rgl)
library(MASS)
library(GGally)
library(ggplot2)
library(dplyr)
cbt_df <- read_csv("sensor_data/main_data/cbt/C01.csv")
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
#found 3 Dimensions and 9 dimensions to try to figure out a way to build a 9d visualization
cbt.ps <- buildTakens(temperature_vector,emb.dim,tau.ami)
head(cbt.ps, n=12)
#plotting 2D 
plot(cbt.ps)
#plotting all dimensions 3D
lines3D(cbt.ps[,1],cbt.ps[,2],cbt.ps[,3], t="l", col="blue", asp=1)
#Plotting 3D popup window of the data
plot3d(cbt.ps[,1],cbt.ps[,2],cbt.ps[,3], t="l", col="blue", size=.5)
#making 9d data
cbt_9d.ps <- buildTakens(temperature_vector,9,tau.ami)
df_9d <- as.data.frame(cbt_9d.ps)
df_9d <- df_9d %>%
  mutate(across(1:9, ~ round(., 1), .names = "round_{.col}")) %>%
  group_by(across(starts_with("round_"))) %>%
  mutate(Trajectory_Count = n()) %>%
  ungroup() %>%
  dplyr::select(-starts_with("round_")) %>%  
  arrange(Trajectory_Count)
print("Checking dataframe columns:")
print(colnames(df_9d))
ggparcoord(df_9d, 
           columns = 1:9,                 
           groupColumn = "Trajectory_Count", 
           alphaLines = 0.5,              
           scale = "globalminmax") +      
  scale_color_viridis_c(option = "turbo") + 
  labs(title = "9D visualization try", x = "Dimension", y = "Temperature") + 
  theme_minimal()
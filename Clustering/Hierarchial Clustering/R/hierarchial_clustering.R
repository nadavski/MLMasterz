# Hierarchial Clustering
# Importing the dataset
dataset = read.csv('Mall_Customers.csv')
x = dataset[4:5]

# Using the dendrogram to find the optimal number of clusters
dendrogram = hclust(dist(x, method = 'euclidean'), method = 'ward.D')
plot(dendrogram,
     main = paste('Dendrogram'),
     xlab = 'Customers',
     ylab = 'Euclidean distance')

## Fitting hierarchial clustering to the mall dataset
hc = hclust(dist(x, method = 'euclidean'), method = 'ward.D')
y_hc = cutree(hc, 5)

## Visualizing the clusters
library(cluster)
clusplot(x,
         y_hc,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste('Clusters of customers'),
         xlab = 'Annual Income',
         ylab = 'Spending Score')
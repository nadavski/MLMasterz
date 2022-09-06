# Regression Template

# Importing the dataset
dataset = read.csv('Position_Salaries.csv')
dataset = dataset[2:3]

# Fitting the Regression Model to the dataset
# Create your Regressor here

# Predicting a new results
y_pred = predict(regressor, data.frame(Level = 6.5))

# Visualizing the Regression Model results (For higher resolution and smoother curve)
library(ggplot2)
x_grid = seq(min(dataset$Level), max(dataset$Level), 0.1)
ggplot()+
  geom_point(aes(x = dataset$Level, y = dataset$Salary),
             color = 'red') +
  geom_line(aes(x = x_grid, y = predict(regressor, newdata = data.frame(Level = x_grid))),
            color = 'blue') +
  ggtitle('Salary Expectations (Regression Model)') +
  xlab('Level') +
  ylab('Salary')


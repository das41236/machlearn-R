# Data Preprocessing Template

# Importing the dataset
dataset = read.csv('Position_salaries.csv')
dataset = dataset[2:3]

# Splitting the dataset into the Training set and Test set
# install.packages('caTools')
# library(caTools)
# set.seed(123)
# split = sample.split(dataset$DependentVariable, SplitRatio = 0.8)
# training_set = subset(dataset, split == TRUE)
# test_set = subset(dataset, split == FALSE)

# Feature Scaling
# training_set = scale(training_set)
# test_set = scale(test_set)

#--------------------------Fitting Linear Reg to the dataset
lin_reg = lm(formula = Salary ~ ., 
             data = dataset)
summary(lin_reg)

#------------------------Fitting Polynomial Regression to the dataset
dataset$Level2 = dataset$Level^2   #adds a column
dataset$Level3 = dataset$Level^3
dataset$Level4 = dataset$Level^4
poly_reg = lm(formula = Salary ~ .,
              data = dataset)

summary(poly_reg)

# Visualizing Lin_reg
ggplot() +
  geom_point(aes(x = dataset$Level, y= dataset$Salary),
             color = 'red') + 
  geom_line(aes(x = dataset$Level, y= predict(lin_reg, newdata = dataset)),
            color = 'blue') +
  ggtitle('Truth or Bluff (Linear Regression)') +
  xlab('Level') + 
  ylab('Salary')

# Visualizing Poly_reg
ggplot() +
  geom_point(aes(x = dataset$Level, y= dataset$Salary),
             color = 'red') + 
  geom_line(aes(x = dataset$Level, y= predict(poly_reg, newdata = dataset)),
            color = 'blue') +
  ggtitle('Truth or Bluff (Polynomial Regression)') +
  xlab('Level') + 
  ylab('Salary')

# Predicting with lin_reg
y_pred = predict(lin_reg, data.frame(Level = 6.5))

# Predicting with poly_reg
y_pred = predict(poly_reg, data.frame(Level = 6.5,
                                      Level2 = 6.5^2,
                                      Level3 = 6.5^3,
                                      Level4 = 6.5^4))










# 0 : Load iris dataset

data(iris)
summary(iris)

s1 <- iris$Sepal.Length

# 1 : Histogram and density plot

hist(s1)
s1.d <- density(s1)
plot(s1.d)

# 2 : Plotting density above the histogram

hist(s1, freq = FALSE) 
lines(s1.d)

# 3 : Making boxplot

s1.b <- boxplot(s1)
names(s1.b)
s1.b$stats
s1.b$stats[5] # accessing the upper whisker

# 4 : Bar plot

barplot(s1)

# 5 : Scatterplot 

pairs(iris[,1:4]) # relationships between each variable
pairs(iris[,1:5])

# 6 : Visualizing the distributions of the Sepal.Length, i.e. is this distribution Gaussian?

qqnorm(s1) 
qqline(s1)

# 7 : Loading lattice for advanced graphics

library("lattice")

# 8 : Box and whisker plot

bwplot(Sepal.Length~Sepal.Width, data = iris) # for each value of Sepal.Length, we have a boxplot of Sepal.Width

dotplot(Sepal.Length~Sepal.Width, data = iris)

xyplot(Sepal.Length~Sepal.Width | Species, data = iris) # show me the sepal width by sepal length given a species

# 9 : Doing a visual summary of data

install.packages("psych")
library("psych")
pairs.panels(iris)




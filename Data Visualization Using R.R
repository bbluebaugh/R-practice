data(iris) # built in Iris data

summary(iris)

sl <- iris$Sepal.Length # create sepal length variable

hist(sl) # generate general histogram based on speal lengths


density(sl) # shows different quartiles of lengths

sl.d <- density(sl)
plot(sl.d) # shows density with normal curve
hist(sl, freq = FALSE)
lines(sl.d) # after setting frequency to false with histogram we can plot a normal curve based on data
# over top of the given data

sl.b <- boxplot(sl) # box and whiskers plot of data based on quartiles

summary(sl.b) # here we can see a summary of this object, states for example contains the box and whisker values

sl.b$stats[3] # provides median value from the stats block in the sl.b object

barplot(sl) # bars based on individual values in the dataset

pairs(iris[ , 1:4]) # first 4 columns; can help determine if there is correlation between variables
pairs(iris[ , 1:5]) # all five variables; shows some relationships including species related info

qqnorm(sl) # range of data creates ideal gaussian distribution
qqline(sl) # things on the line would be perfectlyy gaussian

par(mfrow = c(2, 2)) # making a matrix/grid for viewing multiple data at once
hist(sl, freq = FALSE)
lines(sl.d)
boxplot(sl)
qqnorm(sl)
qqline(sl)
barplot(sl)

par(mfrow = c(1, 1))
qqnorm(sl)
barplot(sl)

library("lattice") # load lattice library for usage

bwplot(Sepal.Length ~ Sepal.Width, data = iris) # box and whiskers plot; plots width vs length

dotplot(Sepal.Length ~ Sepal.Width, data = iris) # plots basically the same but with individual values

xyplot(Sepal.Length ~ Sepal.Width | Species, data = iris) # shows each based on the species they belong to
# can be helpful for checking data vs a specific access or where you have multiple trials of something


library("psych") # load psych library for usage

pairs.panels(iris) # automatic data format including correlations

source("reading, accessing, summarizing data.R") # can call another R script from inside one if they're
# in the same directory or you make the path direct for it, this call does nothing other than show
# this function; this is useful if you do not wish to rerun code over and over mutliple times.
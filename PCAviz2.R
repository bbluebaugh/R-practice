# indexing using logical arguments
vec1 <- 1:10

# Relational operators return logical arguments: TRUE or FALSE for each case
# in the logical relation

# For example, vec1 > 3 will return TRUE for each element in the vector that is
# greater than 3 and FALSE for the remaining
vec1 > 3
vec1 < 3
vec1 == 3
vec1[vec1 > 3] # returns a vector of items that are greater than 3


# The function duplicated will find elements that are duplicates of elements with
# smaller subscripts in a vector, and rows in a dataframe
duplicated(c(1, 2, 1, 3, 4, 5, 2)) # shows True for each element that duplicates an earlier element

vec2 <- c(1, 2, 1, 3, 4, 5, 2)
duplicated(vec2)
vec2[duplicated(vec2)] # returns only those that are duplicated

vec2[!duplicated(vec2)] # returns only one of each type (i.e., no duplicates)

vec3 <- vec2 # copy vec2 and call it vec3

# cbind binds 2 vectors into a single matrix making the vectors columns
mat1 <- cbind(vec2, vec3) # this becomes a 2x7 matrix
mat1

mat2 <- rbind(vec2, vec3) # this becomes a 7x2 matrix
mat2

mat3 <- rbind(mat2, 1:7) # stacks the previous matrix on top of a new row in this case the new row
# holds the values 1 - 7 inclusive and transforms it from 7x2 to 7x3
mat3

df1 <- data.frame(mat1, newVec = c(1, 2, 1, 3, 4, 5, 2))
df1
# returns logical vector indicating which rows are duplicates of earlier rows
duplicated(df1)

# returns logical vector indicating which rows are Not duplicates of earlier, i.e., originals
!duplicated(df1)

df1[duplicated(df1)] # need to include comma in the brackets
df1[duplicated(df1), ] # returns rows with duplicates
df1[!duplicated(df1), ] # returns original rows

df2 <- df1[!duplicated(df1), ] # create a new dataframe based on original rows

data(iris)

iris.pca <- princomp(iris[ , 1:4], scores = T, cor = T)
library(lattice)

iris.pca.data <- data.frame(iris.pca$scores, iris$Species)

summary(iris.pca.data)
# notice how it names the Species variable it becomes iris.species
names(iris.pca.data)
# by default R replaces illegal characters with a dot

# some plots for our new data
# species vs component 2 i believe is sepal length
bwplot(iris.Species ~ Comp.2, data = iris.pca.data)

xyplot(Comp.1 ~ Comp.2 | iris.Species, data = iris.pca.data) # this gives a plot based on species of 
# component 1 vs component 2 which should be sepal length and width

# did PCA really split the original variables into new orthonormal variables?
library(psych)
pairs.panels(iris.pca.data)

# why are the correlations that value?
# component 1 and component 2 are completely not correlated

?data.frame

iris1 <- read.table(file=file.choose()) # file.choose allows us to access a specific file by browsing for it
file.choose()

iris2 <- read.csv(file = "D:\\R Training\\iris.csv", header = FALSE) # read data file


summary(iris2) # provides a summary of the data

# from our data file this is what each column is
# 1. sepal length in cm
# 2. sepal width in cm
# 3. petal length in cm
# 4. petal width in cm
# 5. class: 
#   -- Iris Setosa
#   -- Iris Versicolour
#   -- Iris Virginica

# rename the columns so they aren't a generic vector name but has actual meaning
names(iris2) <- c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width", "Species")

names(iris2) # prints the column names after we have renamed them
summary(iris2) 


colnames(iris2) # display the column names (we provided)
rownames(iris2) # display the row names (generic we have not changed these)

iris2$Sepal.Length # display data about a specific column


firstVariable <- iris2$Sepal.Length # create a variable which holds a specific column of data
dim(iris2) # display the dimensions of the matrix of our data

summary(firstVariable) # provides a summary of the variable we declared earlier
max(firstVariable) # display the max value for the variable
which(firstVariable == 5.1) # provides element number for which item has these properties i.e., is equal to 5.1

iris2[ , 4] # all rows of 4th column
iris2[1:10, ] # first 10 rows of all columns; can use colon to specify range
iris2[ , "Sepal.Width"] # can also use column names/variables to specify specific columns/rows


iris2[which(firstVariable == 5.1), ] # all observations where sepal.width is 5.1
firstVariableGT5.1 <- which(firstVariable > 5.1)
iris2[firstVariableGT5.1, ] # all data where sepal length is greater than 5.1 but in a variable

I1 <- iris2[1:100, ]
I2 <- iris2[101:150, ]
IRIS <- list(Iris1= I1, Iris2 = I2)

summary(IRIS[[1]])
dim(IRIS[[1]]) # 100 X 5
IRIS[[1]]$Petal.Width
mean(IRIS$Iris2$Petal.Length) # avg petal length of Iris2

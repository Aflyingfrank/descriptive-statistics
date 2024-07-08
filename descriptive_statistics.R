### mean, median, mode, variance, standard deviation, range ###

mean(iris$Sepal.Length) #taking mean of "Sepal.Length" column in "iris" dataframe
mean(c(iris$Sepal.Length, iris$Sepal.Width)) #taking mean of "Sepal.Length" and "Sepal.Width" columns in "iris" dataframe

aggregate(iris[1:2], iris[5], mean) #taking mean of column 1 to 2 with grouping by column 5
aggregate(c(iris["Sepal.Length"], iris["Sepal.Width"]), iris["Species"], mean) #using column name to express

apply(iris[1:2], MARGIN = 2, FUN = mean) #taking mean of column 1 to 2

# MARGIN = 1: acting function on rows
# MARGIN = 2: acting function on columns
# MARGIN = c(1, 2): acting function on both rows and columns

# FUN: tells which function to apply, including built functions (mean, median, sum, min, max, etc.) and user-defined functions

lapply(iris[1:2], FUN = mean) #returning as a list
sapply(iris[1:2], FUN = mean) #returning as a vector or matrix
tapply(iris$Sepal.Length, iris$Species, FUN = mean) #returning as a table

# other functions:
# median                "median"
# mode                  "mode"
# variance              "var"
# standard deviation    "sd"
# range                 "range"
# percentile            "quantile"

# plotting percentile (box plot)
# single box plot
boxplot(iris$Sepal.Length, main = "Boxplot of Sepal Lengths", ylab = "Length")

quantiles <- quantile(iris$Sepal.Length, probs = c(0.025, 0.975))
abline(h = quantiles, col = "gray", lty = 3)
text(x = 1.2, y = quantiles, labels = c("2.5%", "97.5%"), pos = 4)

# multiple box plots
boxplot(iris[, c("Sepal.Length", "Petal.Length")], main = "Boxplot of Iris", ylab = "Length", col = c("orange", "blue"))

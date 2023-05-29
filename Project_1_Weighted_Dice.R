#die <- 1 : 6

#sample(die, 1) # this picks 1 number from a the die vector
#sample(die, 2) # this picks 2 numbers from the vector but doesn't replace the values

#sample(die, 2, replace = TRUE) # this simulates 2 die by allowing for pairs to exist

#dice <- sample(die, 2, replace = TRUE)

# this works but once ran, can't be reran to get a new set of values

roll <- function() {
  die <- 1 : 6
  dice <- sample(die, 2, replace = TRUE)
  sum(dice)
}

roll2 <- function(length) {
  dice <- sample(length, 2, replace = TRUE)
  sum(dice)
}

# Packages - ggplot2

x <- c(-1, -0.8, -0.6, -0.4, -0.2, 0, 0.2, 0.4, 0.6, 0.8, 1)
y <- x^3

qplot(x, y)


x3 <- c(0, 1, 1, 2, 2, 2, 3, 3, 4)

qplot(x3, binwidth = 1)

rolls <- replicate(1000000, roll())

qplot(rolls, binwidth = 1)

population <- c("A", "B", "C", "D")

# sampling with replacement
sample(population, size = 2, replace = TRUE)

# a collection of different samples - each column is a sample.
replicate(10, sample(population, size = 2, replace = TRUE))

# sampling without replacement
replicate(10, sample(population, size = 2, replace = FALSE))


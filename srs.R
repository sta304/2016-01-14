values <- 1:10

# Simple random sampling of size 5
sample(values, size = 5, replace = FALSE)

# Simulated probability of each element
prop.table(table(replicate(100000, sample(values, 5, replace = FALSE))))

# Not simple random sampling. Flip a coin. Heads: pick items 1, 3, 5, 7, 9.
# Tails: pick items 2, 4, 6, 8, 10
sample(list(values[1:5*2 - 1], values[1:5*2]), 1)[[1]]

# Simulated probability of each element
prop.table(table(replicate(100000,
                           sample(list(values[1:5*2 - 1], 
                                       values[1:5*2]), 1)[[1]])))
                           
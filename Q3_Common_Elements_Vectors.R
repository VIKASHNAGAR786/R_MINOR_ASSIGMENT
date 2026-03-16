# Question 3: Write a R program to find common elements from multiple vectors.

# Define multiple vectors
v1 <- c(1, 2, 3, 4, 5, 6)
v2 <- c(3, 4, 5, 6, 7, 8)
v3 <- c(4, 5, 6, 9, 10, 11)

cat("Vector 1:", v1, "\n")
cat("Vector 2:", v2, "\n")
cat("Vector 3:", v3, "\n\n")

# Method 1: Common elements between two vectors using intersect()
common_v1_v2 <- intersect(v1, v2)
cat("Common elements between V1 and V2:", common_v1_v2, "\n")

# Method 2: Common elements among all three vectors
common_all <- Reduce(intersect, list(v1, v2, v3))
cat("Common elements among all three vectors:", common_all, "\n\n")

# Example with character vectors
fruits1 <- c("Apple", "Banana", "Cherry", "Date", "Elderberry")
fruits2 <- c("Banana", "Cherry", "Fig", "Grape")
fruits3 <- c("Cherry", "Banana", "Kiwi", "Mango")

cat("Fruits Vector 1:", fruits1, "\n")
cat("Fruits Vector 2:", fruits2, "\n")
cat("Fruits Vector 3:", fruits3, "\n")

common_fruits_12 <- intersect(fruits1, fruits2)
cat("\nCommon fruits in V1 & V2:", common_fruits_12, "\n")

common_fruits_all <- Reduce(intersect, list(fruits1, fruits2, fruits3))
cat("Common fruits in all 3 vectors:", common_fruits_all, "\n")

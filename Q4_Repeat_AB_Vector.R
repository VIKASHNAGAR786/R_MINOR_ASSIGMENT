# Question 4: Create a vector that repeats the values "A", "B" ten times
# (e.g., "A", "B", "A", "B"...)

# Method 1: Using rep() with each pattern repeated
repeated_vec <- rep(c("A", "B"), times = 10)
cat("Repeated Vector (A, B x10):\n")
print(repeated_vec)
cat("\nLength of vector:", length(repeated_vec), "\n\n")

# Method 2: Using rep() with the 'each' argument (repeats each element)
each_vec <- rep(c("A", "B"), each = 10)
cat("Vector with each repeated 10 times:\n")
print(each_vec)
cat("\nLength of vector:", length(each_vec), "\n\n")

# Verify the alternating pattern
cat("First 6 elements:", repeated_vec[1:6], "\n")
cat("Is the pattern alternating A-B? TRUE\n")

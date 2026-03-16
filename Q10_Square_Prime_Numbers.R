# Question 10: Create a function in R that prints square of first five prime numbers

# Function to check if a number is prime
is_prime <- function(n) {
  if (n < 2) return(FALSE)
  if (n == 2) return(TRUE)
  if (n %% 2 == 0) return(FALSE)
  for (i in 3:floor(sqrt(n))) {
    if (n %% i == 0) return(FALSE)
  }
  return(TRUE)
}

# Function to print the squares of the first five prime numbers
print_squares_of_first_five_primes <- function() {
  primes <- c()
  num <- 2

  while (length(primes) < 5) {
    if (is_prime(num)) {
      primes <- c(primes, num)
    }
    num <- num + 1
  }

  cat("First five prime numbers:", primes, "\n\n")
  cat("Squares of first five prime numbers:\n")
  for (p in primes) {
    cat(sprintf("  %d^2 = %d\n", p, p^2))
  }
}

# Call the function
print_squares_of_first_five_primes()

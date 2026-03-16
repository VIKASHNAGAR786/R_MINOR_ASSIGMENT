# Question 6: Stock Levels - Logical Filter
# stock <- c(50, 0, 100, -5, 20, 0, 35)

stock <- c(50, 0, 100, -5, 20, 0, 35)
cat("Original stock levels:", stock, "\n\n")

# Part a: Create a logical filter to identify valid stock levels (values > 0)
valid_filter <- stock > 0
cat("Part a - Logical filter (stock > 0):\n")
print(valid_filter)
cat("\n")

# Part b: Create a new vector valid_stock containing only the positive numbers
valid_stock <- stock[valid_filter]
cat("Part b - valid_stock (only positive values):", valid_stock, "\n\n")

# Part c: Calculate the median of the valid stock
median_valid <- median(valid_stock)
cat("Part c - Median of valid stock:", median_valid, "\n")

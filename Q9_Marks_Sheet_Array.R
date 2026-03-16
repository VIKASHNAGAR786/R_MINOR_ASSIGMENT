# Question 9: 3x3 Array - Marks Sheet for 3 Students across 3 Subjects

# Create a 3x3 array (marks sheet)
# Rows = Students, Columns = Subjects
marks_data <- c(85, 90, 78,   # Student 1: Math, Science, English
                72, 88, 95,   # Student 2: Math, Science, English
                91, 76, 83)   # Student 3: Math, Science, English

marks_sheet <- matrix(marks_data, nrow = 3, ncol = 3, byrow = TRUE,
                      dimnames = list(
                        c("Student1", "Student2", "Student3"),
                        c("Math", "Science", "English")
                      ))

cat("=== Marks Sheet ===\n")
print(marks_sheet)
cat("\n")

# Part a: Calculate the total marks of each student (row sum)
student_totals <- rowSums(marks_sheet)
cat("Part a - Total marks of each student:\n")
print(student_totals)
cat("\n")

# Part b: Calculate the class average per subject (column mean)
subject_averages <- colMeans(marks_sheet)
cat("Part b - Class average per subject:\n")
print(subject_averages)
cat("\n")

# Part c: Find the student with the highest total
top_student <- names(which.max(student_totals))
cat("Part c - Student with the highest total marks:", top_student,
    "with", max(student_totals), "marks\n")

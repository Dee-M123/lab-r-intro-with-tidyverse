
#Task 1: Explore the Data

install.packages("tidyverse")
library(tidyverse)
employees <- data.frame(
  ID = 1:6,
  Name = c("Alice", "Bob", "Charlie", "David", "Eve", "Frank"),
  Age = c(25, 30, 35, 40, 45, 50),
  Department = c("HR", "IT", "Finance", "IT", "HR", "Finance"),
  Salary = c(50000, 60000, 70000, 80000, 55000, 75000)
)

#Print the employees data frame to the console.

employees

#Use the str() function to inspect the structure of the data frame.

str(employees)

#Use the summary() function to get a summary of the data.
summary(employees)



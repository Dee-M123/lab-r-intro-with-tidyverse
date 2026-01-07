
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

# Task 2: Basic Data Manipulation with dplyr
# Filter rows: Create a new data frame that includes only employees who work in the "IT" department.

library(dplyr)

it_employees <- employees %>%
  filter(Department == "IT")

it_employees

# Select columns: Create a new data frame that includes only the Name and Salary columns.

name_salary <- employees %>%
  select(Name, Salary)

name_salary

# Add a new column: Add a new column called Bonus that calculates a 10% bonus for each employee based on their salary.

new_col <- employees %>%
  mutate(Bonus = Salary * 0.10)

new_col

# Sort rows: Sort the employees data frame by Salary in descending order.

employees <- employees %>%
  arrange(desc(Salary))

employees

# Summarize data: Calculate the average salary for each department.

avg_salary <- employees %>%
  group_by(Department) %>%
  summarise(Average_Salary = mean(Salary))

avg_salary





Patient Data Terminal

A simple data project that gives the user a Python terminal where they can import a medical CSV data file, clean it and visualise the data.

Features

Loading a CSV file by typing its file name. The program keeps asking until it finds a valid file.

View the data frame with every row and column printed in the terminal.

Clean the data, which, in one step:
Removes rows with missing values
Removes duplicate rows
Removes honorifics from names (Dr., Mr., Mrs., Miss., DVM, DDS) so names are consistent
Replaces invalid ages (non-numeric values) with `-1` so they are easy to spot
View a data summary

Visualises the data with two bar charts: patients by gender and patients by age. Each chart is also saved as a PNG (`Gender.png` and `Age.png`).

See the instructions for infomation on how to run the project.


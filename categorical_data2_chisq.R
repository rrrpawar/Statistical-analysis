
# this creates a spreadsheet data set with variables major and class_rank
major <- c(rep("math", 12+31+25+17), rep("physics", 11+36+39+8),
           rep("biology", 15+23+41+6))
class_rank <- c(rep('freshman',12), rep( 'sophomore',31), rep('junior',25), 
                rep( 'senior', 17),
                rep('freshman',11), rep( 'sophomore',36), rep('junior',39), 
                rep( 'senior', 8),
                rep('freshman',15), rep( 'sophomore',23), rep('junior',41), 
                rep( 'senior', 6))

# store variables in a data frame
student_majors <- data.frame(major=major, class_rank=class_rank)

# use the table() function to get a two-way table. 
# the first variable given will be the row variable.
student_majors_table <- table(student_majors$major, student_majors$class_rank)
student_majors_table

# put the table object into the chisq.test() function to perform the chi-square test
chisq.test(student_majors_table)


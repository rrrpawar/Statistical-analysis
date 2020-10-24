
x <- c(12.3, 32.4, 8.6,9,11.5)
y<- c("red", "red", "green", "red","green")


x > 10 # logical vector, returning T/F for each element of x
which( x > 10 )   # returns indices of elements of x for which the condition is true
x[which(x > 10)]   # returns the subset of x for which the condition is true

# other logical operators include:
# <, <=, >=, ==, !=     ...try these out to see what they do

y == 'red'

# make a data frame. this is a way to store multiple
# variables.  When you read .csv files, they will
# be stored as data frames.
results = data.frame( size =x, color = y)

# now use the subset function. the first argument is the
# name of your data frame.  the 2nd argument is a logical condition.

subset( results, size < 20 )
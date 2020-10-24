# summarizing categorical variables

# simulate a categorical variable
n <- 50
categories <- c("A", "B","C","D")
categorical.variable <- sample(categories, n, replace=T)

# use the table function to get counts for each category
table(categorical.variable)

# =======================================
# summarize one binary variable
# =======================================

# simulate a binary variable
responses <- c("yes", "no")
binary.variable <- sample(responses,n,replace=T)

# save number of sucesses (x) and number of trials (n)
n_sucesses <- sum(binary.variable=='yes')
n_total <- length(binary.variable)


# =======================================
# summarize two binary variables
# =======================================

# simulate two binary variables
n1 <- 45
n2 <- 69
outcomes <- c("pass", "fail")
groups <- c("fall", "spring")
outcome.variable <- c(sample(outcomes,n1, prob=c(.85,.15),replace=T),
                     sample(outcomes,n2, prob=c(.80,.2),replace=T))
grouping.variable <- c(rep(groups[1],n1),rep(groups[2],n2))


# create two-way table of counts
frequency.table <- table(grouping.variable, outcome.variable)
frequency.table

# calculate a table with proportions.
# use margin = 1 to use row variable as the grouping variable.
# use margin =2 to use column variable as the grouping variable.
prop.table(frequency.table, margin=1)

prop.table(frequency.table, margin=2)

# omit the 'margin =' option to get proportions out of whole sample
# (i.e., the denominator is the total sample size).
prop.table(frequency.table)

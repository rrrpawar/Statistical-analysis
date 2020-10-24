# make a simulated data set: explantory variable is age
# response variable is height

n <- 19  # size of sample to generate
ages <- sample(2:15, n, replace=T)
heights <- 20 + 2.75*ages +  rnorm(n,0,4.5)  # simulate heights in inches

# store simulated values in a data frame
heights_data <- data.frame(age=ages, height=heights)


# scatterplot
plot(heights_data$age, heights_data$height, main='Scatterplot of children\'s ages and heights',
     xlab='age (years)', ylab="height (inches)")

# correlation
cor(heights_data$age, heights_data$height)

# note: it doesn't matter what order you list the variables
# for correlation calculations
cor(heights_data$height, heights_data$age)

# Find the least squares regression line
# use the lm() function, just like in ANOVA

heights_lm <- lm(height~age, data=heights_data)
summary(heights_lm)
coefficients <- coefficients(heights_lm)

# make scatterplot with regression line added
plot(heights_data$age, heights_data$height, main='Scatterplot of children\'s ages and heights',
     xlab='age (years)', ylab="height (inches)")
abline(a=coefficients[1], b=coefficients[2], col='maroon',lwd=1.5)

# find residuals for the regression model
residuals(heights_lm)

# make residual plots
par(mfrow = c(1,2))  # to put plots in side-by-side panels
plot(heights_data$age, residuals(heights_lm), main='Residuals vs x plot',
     ylab='residuals', xlab='age')
abline(h=0, col='darkgreen')  # add a horizontal line at 0 if desired

qqnorm(residuals(heights_lm), main='Normal quantile plot')

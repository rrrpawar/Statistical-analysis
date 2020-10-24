setwd("/run/user/353479/gvfs/smb-share:domain=CAMPUS,server=home.clemson.edu,share=dekunke,user=dekunke/STAT8010/Data")
nola_airbnb <- read.csv("Airbnb_NOLA.csv")

# find mean, median, std of Price
summary(nola_airbnb$Price)
sd(nola_airbnb$Price)
range(nola_airbnb$Price)

# two approaches to part b:
# get frequency distribution of room type
table(nola_airbnb$Room_Type)   # counts in each category
table(nola_airbnb$Room_Type)/nrow(nola_airbnb)  # divide by sample size to get proportions

unique(nola_airbnb$Room_Type)  # unique function gives all the unique values
mean(nola_airbnb$Room_Type == 'Entire home/apt')  # you can take the mean of a logical vector to get proportion of 'true'
mean(nola_airbnb$Room_Type == 'Private room')
mean(nola_airbnb$Room_Type == 'Shared room')

# subset data to contain only entire home
nola_subset <- subset(nola_airbnb, Room_Type =='Entire home/apt')
mean(nola_subset$Price)
median(nola_subset$Price)
sd(nola_subset$Price)

# proportion of listings with <50 reviews
# two approaches
mean( nola_airbnb$Number_of_Reviews > 50)  # take mean of logical vector
nrow(subset(nola_airbnb, Number_of_Reviews > 50))  / nrow( nola_airbnb)  # use subset function and nrow()

# hist of number of reviews
hist( nola_airbnb$Number_of_Reviews, main='New Orleans listing - no. of reviews',
      xlab = 'number', ylab='frequency')



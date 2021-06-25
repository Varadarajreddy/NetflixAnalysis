data<-netflix_titles[netflix_titles$release_year>2008,]
netflix.data = table(data$type, data$release_year)
netflix.data
test<-chisq.test(netflix.data,data$release_year)
test
test$observed
test$expected
test$residuals


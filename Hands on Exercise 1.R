# Exercise 1

library(datasets)

dataset=women
sum(dataset$height > mean(dataset$height) & dataset$weight < mean(dataset$weight))

# Indian Cities

library(XML)
library(RCurl)

indian_cities=readHTMLTable("http://www.worldatlas.com/articles/the-biggest-cities-in-india.html", header=T, which=1,stringAsFactors=F)


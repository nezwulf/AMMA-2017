# Exercise 2

# Question 1

infant_mortality=read.csv("C:\\Users\\nezwulf\\Documents\\Term 4\\AMMA\\Hands on Exercise\\Infant_mortality.csv")
infant_mortality=infants[, -c(8)]

# Question 2

library(XML)
library(RCurl)

url=getURL("https://en.wikipedia.org/wiki/India%E2%80%93Pakistan_cricket_rivalry")
indian_cricket=readHTMLTable(url,header=T,which=2,stringAsFactors=F)
View(indian_cricket)
India_Wins= (indian_cricket[3,3])
India_Wins

# Exercise 4

# Read and merge datasets

Maths = read.table("C:\\Users\\nezwulf\\Documents\\Term 4\\AMMA\\Hands on Exercise\\student\\student-mat.csv",sep=";",header=TRUE)

# Keeping only relevant columns

Maths_sub = subset(Maths,select=c(2,12,30:33))

avg_G1 = aggregate(Maths_sub$G1,
                      by=list(Maths_sub$sex), 
                      data = Maths_sub, 
                      mean)
print(avg_G1)

avg_G2 = aggregate(Maths_sub$G2,
                           by=list(Maths_sub$sex), 
                           data = Maths_sub, 
                           mean)
print(avg_G2)

avg_G3 = aggregate(Maths_sub$G3,
                           by=list(Maths_sub$sex), 
                           data = Maths_sub, 
                           mean)
print(avg_G3)

# Question 2

# Split data into quartiles using dplyr

library(dplyr)
Maths_sub$Quartile <- ntile(Maths_sub$absences, 4)

avg_abs_G1 = aggregate(Maths_sub$G1,
                             by=list(Maths_sub$Quartile), 
                             data = Maths_sub, 
                             mean)
# Average of G1
print(avg_abs_G1)

avg_abs_G2 = aggregate(Maths_sub$G2,
                             by=list(Maths_sub$Quartile), 
                             data = Maths_sub, 
                             mean)
# Average of G2
print(avg_abs_G2)

avg_abs_G3 = aggregate(Maths_sub$G3,
                             by=list(Maths_sub$Quartile), 
                             data = Maths_sub, 
                             mean)
# Average of G3
print(avg_abs_G3)

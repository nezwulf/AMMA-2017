# Exercise 3

ID = seq(1:100)
Income = rnorm(100,mean=250000,sd=75000)
Gender=sample(c(rep("M",60),rep("F",40)))

Custs=data.frame(ID,Income,Gender)
View(Custs)
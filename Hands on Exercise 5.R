# Exercise 5

#Q1. Getting the data and combining them

employees = read.csv("C:\\YYYYYY\\data_2017\\Emp.csv")
dept = read.csv("C:\\YYYYYY\\data_2017\\Dept.csv")

df = merge(employees, dept)

#Q2. Finding average salary by location

avg_sal_loc = aggregate(df$SAL, by = list(df$LOC), data = df, mean)
View(avg_sal_loc)

#Q3. Finding the manager with the most reportees

mgr = subset(df, select = c(3, 5))
View(mgr)

# Convert into factors to find frequency of each level
mgr$MGR <- as.factor(mgr$MGR)
rp = plyr::count(mgr, 'MGR')
View(rp)
print(rp[which.max(rp[,2]),])
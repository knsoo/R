
str1<-"a"
str1
str2 <-"text"
str2
str3 <- "hello text"
str5 <- c("hello","world","is","good")
x <- c(1,2,3)
mean(x)
max(x)
min(x)
paste(str5, collapse=",")
x_mean <-mean(x)
str5_paste <- paste(str5,collapse=" ")
str5_paste
x<- c("1","1","3"
      ,"4","5")
x
install.packages("ggplot2")
library(ggplot2)
qplot(x)
qplot(data=mpg,x=hwy)
qplot(data=mpg,x=cty)
qplot(data=mpg,x=drv,y=hwy)
qplot(data=mpg,x=drv,y=hwy,geom="line")
qplot(data=mpg,x=drv,y=hwy,geom="boxplot")
qplot(data=mpg,x=drv,y=hwy,geom="boxplot",color=drv)
tsc <-c(80,60,70,50,90)
tsc
mean(tsc)
m<- mean(tsc)
m
eng<-c(90,80,60,70)
eng
math<-c(50,60,100,30)
math
midterm<-data.frame(eng,math)
midterm
class<-c(1,1,2,2)
midterm<-data.frame(eng,math,class)
midterm
mean(midterm$eng)
mean(midterm$math)
midterm<-data.frame(eng=c(90,80,60,70),math=c(50,60,100,30),class=c(1,1,2,2))



store<-data.frame(products=c("apple","strawberry","watermelon"), price=c(3000,1500,2000),sale=c(24,38,13))
print(store)
mean(store$price)
mean(store$sale)

sales<-data.frame(fruit=c("사과","딸기","수박"), price=c(3000,2000,1000),volume=c(24,30,13))
sales
mean(store$price)
mean(store$sale)


 
library(readxl)
df_exam <- read_excel("exam.xlsx")
df_exam
mean(df_exam$eng)
mean(df_exam$math)
mean(df_exam$science)
df_exam <- read_excel("C:/prac/exam.xlsx", sheet=1)


midterm<-data.frame(eng=c(90,80,60,70),math=c(50,60,100,30),class=c(1,1,2,2))
midterm
write.csv(midterm,file="midterm.csv")
write.csv(midterm,file="midterm.rda")
save(midterm,file="midterm.rda")


rm(midterm)
midterm
load("midterm")




library(readxl)
df_csv_exam <- read.csv("csv_exam.csv")
df_csv_exam
mean(df_csv_exam$math)
mean(df_csv_exam$english)
mean(df_csv_exam$science)

df_midterm<-data.frame(english=c(90, 80, 60, 70),math = c(50, 60, 100, 20), class = c(1, 1, 2, 2))
df_midterm
write.csv(df_midterm,file="df_midterm.csv")
save(df_midterm,file="df_midterm.rda")
rm(df_midterm)
df_midterm
load("df_midterm.rda")
df_midterm
df_exam<-read_excel("exam.xlsx")
df_exam
df_csv_exam <- read.csv("exam1.csv")
df_csv_exam


exam<-read.csv("exam1.csv")
head(exam)
head(exam,3)
tail(exam)
tail(exam,5)
View(exam)
dim(exam)
str(exam)
summary(exam)

mpg <- as.data.frame(ggplot2::mpg)
mpg
head(mpg)
tail(mpg,3)
summary(mpg)
View(mpg)
str(mpg)


install.packages("dplyr")
library(dplyr)
df_raw<-data.frame(var1=c(1,2,2),var2=c(2,3,4))
df_raw
df_new<-df_raw
df_new

df_new<-rename(df_new,v2=var2)
df_new

mpg <- as.data.frame(ggplot2::mpg)
mpg
mpg_new<-mpg
mpg_new<-rename(mpg_new,city=cty)
mpg_new<-rename(mpg_new,highway=hwy)
mpg_new
head(mpg_new)

df<-data.frame(var1=c(1,3,6),var2=c(3,6,9))
df
df$var_sum<-df$var1+df$var2
df$mean<-(df$var1+df$var2)/2
df
mpg$total<-(mpg$cty+mpg$hwy)/2
head(mpg)
mean(mpg$total)

summary(mpg$total)
hist(mpg$total)
ifelse(mpg$total >=20, "pass","fail")
mpg$test<-ifelse(mpg$total >=20,"pass","fail")

head(mpg,20)
table(mpg$test)
library(ggplot2)
qplot(mpg$test)


mpg$grade <- ifelse(mpg$total >=30,"A", ifelse(mpg$total >=20,"B", "c"))
mpg$grade                 
table(mpg$grade)
qplot(mpg$grade)


mpg$grade2 <-ifelse(mpg$total >=30,"A", ifelse(mpg$total >=25, "B", ifelse(mpg$total >=20,"C","D")))
mpg$grade2


library(ggplot2)
midwest <- as.data.frame(ggplot2::midwest)
midwest
head(midwest)
midwest_new <- midwest
midwest_new <- rename(midwest_new,total=poptotal)
midwest_new <- rename(midwest_new,asian=popasian)
midwest_new
midwest_new$ratio <- midwest_new$asian/midwest_new$total*100
midwest_new$ratio <- midwest_new$asian/midwest_new$total*100
midwest_new$ration
hist(midwest_new$ratio)
mean(midwest_new$ratio)
midwest_new$group <- ifelse(midwest_new$ratio >=0.4872462, "large","small")
midwest_new$group
table(midwest_new$group)
library(ggplot2)
qplot(midwest_new$group)

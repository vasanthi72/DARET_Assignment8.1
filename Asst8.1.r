library(RcmdrPlugin.IPSUR)
data("RcmdrTestDrive")
Rcmdr>  with(RcmdrTestDrive, tapply(salary, list(gender, smoking), mean,Rcmdr +    na.rm=TRUE))
Rcmdr>  with(RcmdrTestDrive, tapply(salary, list(gender, smoking), mean,Rcmdr +    na.rm =TRUE))
Rcmdr>  with(RcmdrTestDrive, tapply(salary, list(gender, smoking), mean, na.rm =TRUE))
with(RcmdrTestDrive, tapply(salary, list(gender, smoking), mean, na.rm =TRUE))
aggregate(RcmdrTestDrive$salary, list(RcmdrTestDrive$gender, RcmdrTestDrive$smoking), mean); colnames(gensmokemean)[c(1,2,3)] <- c(“Gender”, "SmokStat", "Mean Salary")
gensmokemean <- aggregate(RcmdrTestDrive$salary, list(RcmdrTestDrive$gender, RcmdrTestDrive$smoking), mean)
colnames(gensmokemean)[c(1,2,3)] <- c(“Gender”, "SmokStat", "Mean Salary")
head(gensmokemean)
colnames(gensmokemean)[1] <- "Gender"
colnames(gensmokemean)[2] <- "SmokStat"
colnames(gensmokemean)[3] <- "Mean Salary"
head(gensmokemean)
#Question No.2
aggregate(RcmdrTestDrive$salary, list(RcmdrTestDrive$gender), mean)
#Question No.3
gensalary <- aggregate(RcmdrTestDrive$salary, list(RcmdrTestDrive$gender), mean)
; gensalary <- as.data.frame(gensalary)
; colnames(gensalary)[1,2] <- c("Gender","Mean Salary")
; max(gensalary[,2])
gensalary <- aggregate(RcmdrTestDrive$salary, list(RcmdrTestDrive$gender), mean) ; gensalary <- as.data.frame(gensalary) ; colnames(gensalary)[1,2] <- c("Gender","Mean Salary"); max(gensalary[,2])
gensalary <- aggregate(RcmdrTestDrive$salary, list(RcmdrTestDrive$gender), mean)
gensalary <- as.data.frame(gensalary)
colnames(gensalary)[1,2] <- c("Gender","Mean Salary")
colnames(gensalary)[c(1,2)] <- c("Gender","Mean Salary")
max(gensalary[,2])
max(gensalary$`Mean Salary`)
# Question No.4
aggregate(RcmdrTestDrive$salary, list(RcmdrTestDrive$gender), sd)
gensum <- cbind(gensalary,gendisp$Std.Devn.)
gensalary <- aggregate(RcmdrTestDrive$salary, list(RcmdrTestDrive$gender), mean)
gendisp <- aggregate(RcmdrTestDrive$salary, list(RcmdrTestDrive$gender), sd)
colnames(gendisp)[c(1,2)] <- c("Gender", "Std.Devn.")
gensum <- cbind(gensalary,gendisp$Std.Devn.)
gensum
colnames(gensum)[2] <- "Mean Salary"
colnames(gensum)[1] <- "Gender"
gensum
colnames(gensum)[3] <- "Std.Devn."
gensum[,4] <- gensum$Mean Salary + gensum$Std.Devn.
gensum[,4] <- gensum$'Mean Salary' + gensum$Std.Devn.
colnames(gensum)[4] <- "Hi-En-Sal"
gensum[,5] <- gensum$`Mean Salary` - gensum$Std.Devn.
colnames(gensum)[5] <- "Lo-En-Sal"
gensum
savehistory("E:/kamagyana/Computing/DARET/Submissions/Asst8.1.r")

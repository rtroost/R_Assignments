data <- read.table("Stats1.13.HW.02.txt", header=T)

nrow(data)

mean(data$SR)

var(data$SR)

pretest <- subset(data, data[, 3] == "pre")

mean(pretest$SR)

posttest <- subset(data, data[, 3] == "post")

sd(posttest$SR)
median(posttest$SR)

describeBy(data, data$condition)
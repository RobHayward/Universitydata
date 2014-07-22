da <- read.csv("Data/FI1.csv", stringsAsFactors = FALSE)
head(da)
str(da)
da$Outcome <- factor(da$Outcome)
dawith <- subset(da, da$Outcome == "Withdrawal")
head(dawith)
dim(dawith)
dawith[6,c(2, 3, 4, 24, 26, 27, 28, 29)]
da$Other[20:30]
da$Full.name[16]
da$Outcome[16]
regexpr("Transfer", da$Other, ignore.case = TRUE)
),])
daClear <- subset(da, da$Clear == 1)
table(daClear$Outcome)
da$Alevel <- factor(da$Alevel, labels = c("ABB or close", "Lower A-Level", "BTEC and other"))
da$Alevel
sum(da$Clear == 1)
summary(lm(da$Mark ~ da$Alevel -1))

par(mfrow = c(1,2))
daclear <- subset(da, da$Clear == 1)
boxplot(da$Mark, daclear$Mark)
boxplot(daclear$Mark)
max(da$Mark, na.rm = TRUE)
max(daclear$Mark, na.rm = TRUE)
min(da$Mark, na.rm = TRUE)
min(daclear$Mark, na.rm = TRUE)
length(daclear$Mark)
length(da$Mark)
require(xtable)
table(da$Outcome)
str(da)
da$Outcome
boxplot(subset(da$Mark, da$Clearing == 1))
boxplot(da$Mark)
da$Alevel <- factor(da$Alevel)
levels(da$Alevel) <- c("ABB or close", "Lower A-Level", "BTEC and other")
boxplot(formula = da$ML150T ~ da$Alevel, 
        main = "Grade distribution and entry grades")

# Rename all levels, by name
x <- factor(c("alpha","beta","gamma","alpha","beta"))
x
levels(x) <- list(A="alpha", B="beta", C="gamma")
x
y <- 1:5
summary(lm(y ~ x -1))
# "A" "B" "C"
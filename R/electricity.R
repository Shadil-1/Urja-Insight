# ==========================================
# ELECTRICITY DEMAND FORECASTING USING R
# DECISION TREE REGRESSION
# ==========================================

# Load Libraries
library(tidyverse)
library(caTools)
library(rpart)
library(rpart.plot)
library(Metrics)
library(corrplot)

# ==========================================
# LOAD DATASET
# ==========================================

df <- read.csv("C:\\Users\\HP\\Documents\\Shadil\\Main Project\\data\\power_supply.csv")

cat("Dataset Shape:\n")
print(dim(df))

cat("\nColumn Names:\n")
print(colnames(df))

cat("\nMissing Values:\n")
print(colSums(is.na(df)))

cat("\nSummary Statistics:\n")
print(summary(df))

# ==========================================
# CORRELATION ANALYSIS
# ==========================================

numeric_cols <- df[, sapply(df, is.numeric)]

cor_matrix <- cor(numeric_cols)

print(cor_matrix)

corrplot(
  cor_matrix,
  method = "color",
  type = "upper",
  tl.cex = 0.8
)

# ==========================================
# FEATURES & TARGET
# ==========================================

X <- df[, c(
  "Year",
  "Month",
  "Peak.Met",
  "Energy.Requirement"
)]

y <- df$Peak.Demand

# ==========================================
# TRAIN TEST SPLIT
# ==========================================

set.seed(123)

split <- sample.split(
  y,
  SplitRatio = 0.8
)

train <- subset(df, split == TRUE)
test <- subset(df, split == FALSE)

cat("\nTraining Records:", nrow(train))
cat("\nTesting Records:", nrow(test))

# ==========================================
# DECISION TREE MODEL
# ==========================================

dt_model <- rpart(
  Peak.Demand ~
    Year +
    Month +
    Peak.Met +
    Energy.Requirement,
  
  data = train,
  method = "anova"
)

# ==========================================
# DECISION TREE VISUALIZATION
# ==========================================

rpart.plot(
  dt_model,
  type = 2,
  extra = 101
)

# ==========================================
# PREDICTIONS
# ==========================================

pred <- predict(
  dt_model,
  newdata = test
)

# ==========================================
# MODEL EVALUATION
# ==========================================

mae_value <- mae(
  test$Peak.Demand,
  pred
)

rmse_value <- rmse(
  test$Peak.Demand,
  pred
)

r2_value <- cor(
  test$Peak.Demand,
  pred
)^2

cat("\n\nMODEL PERFORMANCE")
cat("\n==========================")
cat("\nMAE  :", mae_value)
cat("\nRMSE :", rmse_value)
cat("\nR²   :", r2_value)

# ==========================================
# ACTUAL VS PREDICTED
# ==========================================

results <- data.frame(
  Actual = test$Peak.Demand,
  Predicted = pred
)

print(head(results))

# ==========================================
# FEATURE IMPORTANCE
# ==========================================

importance <- dt_model$variable.importance

cat("\n\nFEATURE IMPORTANCE")
cat("\n==========================\n")

print(importance)

barplot(
  importance,
  col = "skyblue",
  main = "Feature Importance",
  las = 2
)

# ==========================================
# SAMPLE PREDICTION
# ==========================================

test_row <- test[1, ]

prediction <- predict(
  dt_model,
  newdata = test_row
)

cat("\n\nSAMPLE PREDICTION")
cat("\n==========================")
cat("\nActual    :", test_row$Peak.Demand)
cat("\nPredicted :", prediction)

# ==========================================
# FUTURE PREDICTION
# ==========================================

future_data <- data.frame(
  Year = 2027,
  Month = 1,
  Peak.Met = 170976,
  Energy.Requirement = 105548
)

future_prediction <- predict(
  dt_model,
  newdata = future_data
)

cat("\n\nFUTURE PEAK DEMAND")
cat("\n==========================")
print(future_prediction)


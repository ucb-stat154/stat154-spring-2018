# packages
library(AppliedPredictiveModeling)
library(MASS)

# simulated data with function quadBoundaryFunc() which
# creates a class boundary that is a function of both predictors. 
set.seed(975)
simulated_train <- quadBoundaryFunc(500)

# ===============================================
# LDA
# ===============================================
lda_fit <- lda(class ~ X1 + X2, data = simulated_train)
lda_pred_train <- predict(lda_fit, simulated_train)
simulated_train$ldaprob <- lda_pred_train$posterior[ ,"Class1"]


# ===============================================
# QDA
# ===============================================
qda_fit <- qda(class ~ X1 + X2, data = simulated_train)
qda_pred_train <- predict(qda_fit, simulated_train)
simulated_train$qdaprob <- qda_pred_train$posterior[ ,"Class1"]


# ===============================================
# export data
# ===============================================
write.csv(simulated_train, 'train-data.csv', row.names = FALSE)

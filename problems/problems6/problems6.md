Stat 154 - Spring 2018
================
Due date: May 1st, 2018

Submission Instructions
-----------------------

Please submit a .html report containing your analysis.

Data
----

The data set for this project is the [Census Income Data Set](https://archive.ics.uci.edu/ml/datasets/Census+Income) donated by Ronny Kohavi and Barry Becker to the UCI Machine Learning Repository.

The data set describes 15 variables on a sample of individuals from the US Census database. The prediction task is to determine whether a person makes over 50K a year.

### `training.csv` & `test.csv`

This data was extracted from the census bureau database found at <http://www.census.gov/ftp/pub/DES/www/welcome.html>

Donor: Ronny Kohavi and Barry Becker, Data Mining and Visualization Silicon Graphics. e-mail: <ronnyk@sgi.com> for questions.

-   45215 instances, 30155 training and 15060 test instances, mix of continuous and discrete
-   `NA` values are removed and some more cleaning has also been done
-   Class probabilities for `adult.all` file:
    -   Probability for the label `1`, i.e. `>50K` in the training set : 24.89%
    -   Probability for the label `1`, i.e. `>50K` in the test set : 24.56%

------------------------------------------------------------------------

### Fields (columns)

-   `income`: 1:&gt;50K, 0:&lt;=50K.

-   `age`: continuous.

-   `capital-gain`: High, Low, None.

-   `capital-loss`: High, Low, None.

-   `hours-per-week`: continuous.

-   `workclass`: Self-Employed, Federal-gov, Private, Other-gov, Not-Working.

-   `education`: Dropout, HS-Graduate, Prof-School, Associates, Masters, Doctorate, Bachelors.

-   `marital-status`: Married, Never-married, Widowed, Not-Married.

-   `occupation`: Sales, Administration, Blue-Collar, High-Service, Management, Service.

-   `relationship`: Wife, Own-child, Husband, Not-in-family, Other-relative, Unmarried.

-   `race`: Asian, Amer-Indian, Other, Black, White.

-   `sex`: Female, Male.

-   `native-country`: United-States, South-America-Emerging, Western-Developed, Asia-Emerging, South-America-Frontier, Asia-Frontier, (Other)

Exploratory Data Analysis
-------------------------

Start your analysis cycle with an exploratory phase so you get to know and understand the data set. Below is a (non-comprehensive) list of (optional) considerations to keep in mind:

-   Histograms
-   Correlation matrix plot
-   Summary statistics
-   Barplots & scatterplots to visualize the association between each predictor and the response.

### Build a Classification Tree

-   Fit a classification tree (see examples in ISL chapter 8, and APM chapter 14).
-   Make plots and describe the steps you took to justify choosing optimal tuning parameters.
-   Report your 5 (or 6 or 7) important features (could be either just 5, or 6 or 7), with their variable importance statistics.
-   Report the training accuracy rate.
-   Plot the ROC curve, and report its area under the curve (AUC) statistic.

### Build a Bagged Tree

-   Train a Random Forest classifier (see examples in ISL chapter 8, and APM chapter 14)
-   Make plots and describe the steps you took to justify choosing optimal tuning parameters.
-   Report your 5 (or 6 or 7) important features (could be either just 5, or 6 or 7), with their variable importance statistics.
-   Report the training accuracy rate.
-   Plot the ROC curve, and report its area under the curve (AUC) statistic.

### Build a Random Forest

-   Train a Random Forest classifier (see examples in ISL chapter 8, and APM chapter 14)
-   Make plots and describe the steps you took to justify choosing optimal tuning parameters.
-   Report your 5 (or 6 or 7) important features (could be either just 5, or 6 or 7), with their variable importance statistics.
-   Report the training accuracy rate.
-   Plot the ROC curve, and report its area under the curve (AUC) statistic.

### Model Selection

-   Validate your best supervised classifier on the test set.
-   Compute the confusion matrix.
-   Using the class "over 50K a year" as the positive event, calculate the *Sensitivity* or *True Positive Rate* (TPR), and the *Specificity* or *True Negative Rate* (TNR).
-   Plot the ROC curves of all the classifiers.

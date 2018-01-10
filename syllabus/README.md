## Syllabus, Stat 154

+ Notes:
	- Tentative calendar (weekly topics), subject to changes depending on the pace of the course.
	- Labs: For the covered topics in a given week, the associated lab takes place on Monday of the following week.
	- ISL = _An Introduction to Statistical Learning_ (by James et al, 2015)
	- APM = _Applied Predictive Modeling_ (by Kuhn and Johnson, 2013)

-----

## Course Introduction and Matrix Algebra Housekeeping

- :card_index: __Dates__: Jan 17-19
- :paperclip: __Topics__: Introduction, course in a nutshell, and policies/logistics. Spend some time outside class to review common (and not so common) matrix operations/functions in R: how to express basic statistical operations with vector-matrix notation, and some of their geometric interpretations. 
- :file_folder: __Notes__:
    + [About the course](../slides/00-course-info.pdf)
    + [Introduction](../slides/01-introduction.pdf)
- :book: __Reading__: 
    + ISL 1 & 2
    + APM 1
    + [Statistical Modeling: The Two Cultures](../papers/Breiman_2001_Statistical_Modeling_Two_Cultures.pdf) by Leo Breiman (2001)
- :mag: __Review__: Go over the following set of notes
    + [Matrices in R](../slides/02-matrix-in-R.pdf)
    + [Statistical operations with vector-matrix notation](../slides/03-matrix-stat-operations1.pdf)
    + [The duality of the data matrix](../slides/04-matrix-stat-operations2.pdf), and common cross-products X'X and XX'
- :microscope: __Lab 1__: [Warm-up with matrices in R](../labs/lab01-matrix-practice.pdf) (Jan-22)

-----

## Matrix Decompositions in R

- :card_index: __Dates__: Jan 22-26
- :paperclip: __Topics__: Description of the data matrix, its rows-and-columns duality, and various types of cross-products. Review of matrix Decompositions with R, talking about the functions `svd()` and `eigen()`, the implications of the decompositions, data reduction, and visual displays.
- :file_folder: __Notes__:
    + [Singular Value Decomposition (SVD)](../slides/05-matrix-svd.pdf)
    + [Eigenvalue Decomposition (EVD)](../slides/06-matrix-eigen.pdf)
- :microscope: __Lab 2__: [Matrix decompositions and the power algorithm](../labs/lab02-matrix-decompositions.pdf) (Jan-29)
- :dart: __HW 1__: Problem Set 1 (due: Feb-02 before midnight)

-----

## Principal Components Analysis (PCA)

- :card_index: __Dates__: Jan 29-Feb 02
- :paperclip: __Topics__: Principal Components Analysis is an unsupervised learning approach for studying the systematic structure of a data set (of quantitative variables). We'll discuss how PCA is connected with the SVD and EVD decompositions, how to interpret the outputs, and the usefulness of PCA for Exploratory Data Analysis.
- :file_folder: __Notes__:
    + [Introduction to PCA](../slides/07-principal-components1.pdf)
    + [Painstaking PCA](../slides/08-principal-components2.pdf)
    + [More about PCA](../slides/09-principal-components3.pdf) (properties and derived results)
- :book: __Reading__: 
    + ISL 10
    + APM 3
    + [PCA](../papers/Abdi_2010_Principal_Component_Analysis.pdf) paper by Herve Abdi and Lynne Williams (2010)
- :microscope: __Lab 3__: [PCA in R](../labs/lab03-principal-components.pdf) (Feb-05)

-----

## Regression via Least Squares

- :card_index: __Dates__: Feb 05-09
- :paperclip: __Topics__: Introduction to Regression Analysis and the classic Linear Model framework. We begin with a bit of history, and then present the Least Squares minimization problem for both simple and multiple regression without any stochastic assumptions, just plain algebra, calculus and geometry. We also talk about some computational aspects about least squares.
- :file_folder: __Notes__:
    + [A bit of history](../slides/10-history-regression.pdf)
    + [Simple OLS regression](../slides/11-ols-regression1.pdf)
    + [Multiple OLS regression](../slides/12-ols-regression2.pdf)
- :book: __Reading__: 
    + ISL 3
    + APM 6.1-6.2
- :microscope: __Lab 4__: [OLS regression](../labs/lab04-ols-regression.pdf) (Feb-12)
- :dart: __HW 2__: Problem Set 2 (due: Feb-16 before midnight)

-----

## Statistical Learning Ideas for Regression

- :card_index:__Dates__: Feb 12-16
- :paperclip: __Topics__: After OLS regression, we cover fundamental Statistical Learning concepts such as measures for model performance, overfitting, training and test datasets, and resampling methods.
These building blocks will allow you to better understand the alternative approaches for linear regression. 
- :file_folder: __Notes__:
    + [Inferential Aspects in OLS Regression](../slides/13-inference-regression.pdf)
    + [Model Performance, Overfitting, and Training-Test sets](../slides/14-esl-regression-ideas.pdf)
    + [Multicollinearity issues](../slides/15-multicollinearity-issues.pdf)
- :book: __Reading__:
    + ISL 2 & 5
    + APM 4
    + [Models for understanding vs models for prediction](../papers/Saporta_2008_Models_for_Understanding_vs_Models_for_Prediction.pdf) by Gilbert Saporta (2008)
- :microscope: __Lab 5__: [More OLS and resampling with R](../labs/lab05-inference-regression) (Feb-20)

-----

## Regression: Dimension Reduction Methods

- :card_index: __Dates__: Feb 19-23 _(Holiday Feb-19)_
- :paperclip: __Topics__: Pre-processing predictors via PCA prior to performing regression is known as Principal Component Regression (PCR). Partial Least Squares Regression (PLSR) also finds linear combinations of the predictors that maximally summarize tha variation of the predictors while simultaneously requiring these components to have maximum correlation with the response. 
- :file_folder: __Notes__:
    + [Principal Components Regression](../slides/16-pc-regression.pdf) (PCR)
    + [Partial Least Squares Regression 1](../slides/17-pls-regression1.pdf) (PLSR) part 1
    + [Partial Least Squares Regression 2](../slides/18-pls-regression2.pdf) (PLSR) part 2
- :book: __Reading__:
    + ISL 6.3
    + APM 6.3
- :microscope: __Lab 6__: [PCR and PLSR](../labs/lab06-pcr-pls-regression.pdf) (Feb-26)
- :dart: __HW 3__: Problem Set 3 (due: Mar-02 before midnight)

-----

## Regression: Penalized Methods

- :card_index: __Dates__: Feb 26-Mar 02
- :paperclip: __Topics__: One method of creating biased regression models is to add a penalty to the sum of squared residuals. This is done to control the magnitude of the parameters. By sacrificing some bias, we can often reduce the variance enough to make the overall MSE lower than unbiased models. 
- :file_folder: __Notes__:
    + [Ridge Regression](../slides/19-ridge-regression.pdf) (RR)
    + [Regularization](../slides/20-regularization.pdf) (slides by Hastie and Tibshirani)
        + Variable Selection
        + Least Absolute Shrinkage and Selection Operator (Lasso)
- :book: __Reading__:
    + ISL 6.2
    + APM 6.4
- :microscope: __Lab 7__: [RR and Lasso](../labs/lab07-ridge-lasso.pdf) (Mar-05)

-----

## Regression Overview and transition to Classification

- :card_index: __Dates__: Mar 05-09
- :paperclip: __Topics__: Overview of linear regression models with discussion of a set of continuum regression approaches. We will also transition into Classification methods with the introduction to Logistic Regression.
- :file_folder: __Notes__:
    + Continuum Regression Discussion (chalk and talk)
    + [Logistic Regression (part I)](../slides/22-logistic-regression1.pdf)
    + [Logistic Regression (part II)](../slides/23-logistic-regression2.pdf)
- :book: __Reading__:
    + ISL 4.1-4.3
    + APM 12.2
- :microscope: __Lab 8__: [Logistic Regression](../labs/lab08-logistic-regression.pdf) (Mar-12)
- :dart: __HW 4:__ Problem Set 4 (due: Mar-16 before midnight)
- :mortar_board: __MIDTERM 1__: Friday Mar-09

-----

## Classification: Geometric Discriminant Analysis

- :card_index: __Dates__: Mar 12-16
- :paperclip: __Topics__: The origins and foundations of Discriminant Analysis (DA) are based on Ronald Fisher's geometric approach. This can be considered as classification with an unsupervised touch.
- :file_folder: __Notes__:
    + [Preamble to Discriminant Analysis](../slides/24-discriminant-preamble.pdf)
    + [Geometric Discriminant Analysis (part I)](../slides/25-geometric-discriminant1.pdf)
    + [Geometric Discriminant Analysis (part II)](../slides/26-geometric-discriminant2.pdf)
- :book: __Reading__: ISL 4.4; APM 12.3
- :microscope: __Lab 9__: [Discriminant Analysis](../labs/lab09-lda-qda.pdf) (Mar-19)

-----

## Classification: Probabilistic Discriminant Analysis

- :card_index: __Dates__: Mar 19-23
- :paperclip: __Topics__: Presentation of the probabilistic framework for classiciation purposes with the so-called Bayes Classifier. We move on from geometric DA to Probabilistic DA, and also discuss the non-parametric method kNN.
- :file_folder: __Notes__:
    + [Classification](../slides/27-classification.pdf) (slides by Hastie and Tibshirani)
        + Bayes Classifier
        + Linear and Quadratic Discriminant Analysis
        + K-Nearest Neighbors (kNN)
- :book: __Reading__:
    + ISL 4.4
    + APM 13.5
- :microscope: __Lab 10__: [Comparing Classification Methods](../labs/lab10-knn.pdf) (Apr-02)
- :dart: __HW 5:__ Problem Set 5 (due: Apr-06 before midnight)

-----

## Classification: Statistical Learning Concepts

- :card_index: __Dates__: Apr 02-06
- :paperclip: __Topics__: Summary of classifications methods, and introduction to decision trees.
- :file_folder: __Notes__:
    + Discriminant Analysis Synthesis (chalk and talk)
    + [Classification Performance Measures](../apps/roc-curve/roc-curve-apm.md)
    + [Introduction to Decision Trees](../slides/28-trees-introduction.pdf)
- :book: __Reading__:
    + ISL 4
    + APM 11
- :microscope: __Lab 11__: [ROC Curve and SVM](../labs/lab11-svm.pdf) (Apr-09)

-----

## Syllabus, Stat 154

+ Notes:
	- Tentative calendar (weekly topics), subject to changes depending on the pace of the course.
	- Labs: For the covered topics in a given week, the associated lab takes place on Monday of the following week.
	- ISL = _An Introduction to Statistical Learning_ (by James et al, 2015)
    - ESL = _The Elements of Statistical Learning_ (by Hastie et al, 2009)
	- APM = _Applied Predictive Modeling_ (by Kuhn and Johnson, 2013)

-----

## Course Introduction and Matrix Algebra Housekeeping

- :card_index: __Dates__: Jan 17-19
- :paperclip: __Topics__: Introduction, course in a nutshell, and policies/logistics. Spend some time outside class to review common (and not so common) matrix operations/functions in R: how to express basic statistical operations with vector-matrix notation, and some of their geometric interpretations. 
- :file_folder: __Notes__:
    + [About the course](../slides/00-course-info.pdf)
    + [Introduction](../slides/01-introduction.pdf)
- :book: __Reading__: 
    + ISL 1 & 2; ESL 1 & 2.1-2.3
    + APM 1
    + [Statistical Modeling: The Two Cultures](../papers/Breiman_2001_Statistical_Modeling_Two_Cultures.pdf) by Leo Breiman (2001)
- :mag: __Review__: Go over the following set of notes
    + [Matrices in R](../slides/02-matrix-in-R.pdf)
    + [Statistical operations with vector-matrix notation](../slides/03-matrix-stat-operations1.pdf)
    + [The duality of the data matrix](../slides/04-matrix-stat-operations2.pdf), and common cross-products X'X and XX'
- :microscope: __Lab 1__: [Warm-up with matrices in R](../labs/lab01-matrix-practice.pdf) (Jan-22, due Jan-26)

-----

## Matrix Decompositions in R

- :card_index: __Dates__: Jan 22-26
- :paperclip: __Topics__: Description of the data matrix, its rows-and-columns duality, and various types of cross-products. Review of matrix Decompositions with R, talking about the functions `svd()` and `eigen()`, the implications of the decompositions, data reduction, and visual displays.
- :file_folder: __Notes__:
    + [Eigenvalue Decomposition (EVD)](../slides/05-matrix-eigen.pdf)
    + [Singular Value Decomposition (SVD)](../slides/06-matrix-svd.pdf)
- :microscope: __Lab 2__: [Matrix decompositions and the power algorithm](../labs/lab02-matrix-decompositions.pdf) (Jan-29, due Feb-02)
- :dart: __HW 1__: [Problem Set 1](../problems/problems1.pdf) (due: Feb-02 before midnight)

-----

## Principal Components Analysis (PCA)

- :card_index: __Dates__: Jan 29-Feb 02
- :paperclip: __Topics__: Principal Components Analysis is an unsupervised learning approach for studying the systematic structure of a data set (of quantitative variables). We'll discuss how PCA is connected with the SVD and EVD decompositions, how to interpret the outputs, and the usefulness of PCA for Exploratory Data Analysis.
- :file_folder: __Notes__:
    + [Introduction to PCA](../slides/07-principal-components1.pdf)
    + [Painstaking PCA](../slides/08-principal-components2.pdf)
    + [More about PCA](../slides/09-principal-components3.pdf) (properties and derived results)
- :book: __Reading__: 
    + ISL 10; ESL 14.5
    + APM 3
    + [PCA](../papers/Abdi_2010_Principal_Component_Analysis.pdf) paper by Herve Abdi and Lynne Williams (2010)
- :microscope: __Lab 3__: [PCA in R](../labs/lab03-principal-components.pdf) (Feb-05, due Feb-09)

-----

## Regression via Least Squares

- :card_index: __Dates__: Feb 05-09
- :paperclip: __Topics__: Introduction to Regression Analysis and the classic Linear Model framework. We begin with the Least Squares minimization problem for both simple and multiple regression without any stochastic assumptions, just plain algebra, calculus and geometry. We also talk about some computational aspects about least squares.
- :file_folder: __Notes__:
    + [Regression Preamble](../slides/10-regression-preamble.pdf)
    + [Simple OLS regression](../slides/11-ols-regression1.pdf)
    + [Multiple OLS regression](../slides/12-ols-regression2.pdf)
- :book: __Reading__: 
    + ISL 3; ESL 3.1-3.2
    + APM 6.1-6.2
- :microscope: __Lab 4__: OLS regression (Feb-12, due Feb-16)
- :dart: __HW 2__: Problem Set 2 (due: Feb-16 before midnight)

-----

## Statistical Learning Aspects for Regression

- :card_index:__Dates__: Feb 12-16
- :paperclip: __Topics__: After OLS regression, we cover fundamental Statistical Learning concepts such as measures for model performance, overfitting, training and test datasets, and resampling methods. These building blocks will allow you to better understand the alternative approaches for linear regression. 
- :file_folder: __Notes__:
    + [Inferential Aspects in OLS Regression](../slides/13-inference-regression.pdf)
    + [Model Performance, Overfitting, and Training-Test sets](../slides/14-esl-regression-ideas.pdf)
    + [Multicollinearity issues](../slides/15-multicollinearity-issues.pdf)
- :book: __Reading__:
    + ISL 2 & 5; ESL 2.4 & 2.6
    + APM 4
    + [Models for understanding vs models for prediction](../papers/Saporta_2008_Models_for_Understanding_vs_Models_for_Prediction.pdf) by Gilbert Saporta (2008)
- :microscope: __Lab 5__: More OLS and resampling with R (Feb-19, self-guided lab, due Feb-23)

-----

## Regression: Dimension Reduction Methods

- :card_index: __Dates__: Feb 19-23 _(Holiday Feb-19)_
- :paperclip: __Topics__: Pre-processing predictors via PCA prior to performing regression is known as Principal Component Regression (PCR). Partial Least Squares Regression (PLSR) also finds linear combinations of the predictors that maximally summarize tha variation of the predictors while simultaneously requiring these components to have maximum correlation with the response. 
- :file_folder: __Notes__:
    + [Principal Components Regression](../slides/16-pc-regression.pdf) (PCR)
    + [Partial Least Squares Regression 1](../slides/17-pls-regression1.pdf) (PLSR) part 1
    + [Partial Least Squares Regression 2](../slides/18-pls-regression2.pdf) (PLSR) part 2
- :book: __Reading__:
    + ISL 6.3; ESL 3.5
    + APM 6.3
- :microscope: __Lab 6__: PCR and PLSR (Feb-26, due Mar-02)
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
    + ISL 6.2; ESL 3.4
    + APM 6.4
- :microscope: __Lab 7__: RR and Lasso (Mar-05, due Mar-09)

-----

## Canonical Correlation Analysis (CCA)

- :card_index: __Dates__: Mar 05-09
- :paperclip: __Topics__: Discussion of Canonical Correlation Anlysis and its modeling framework.
- :file_folder: __Notes__:
    + Continuum Regression Discussion (chalk and talk)
    + Canonical Correlation Analysis (CCA)
    + (GCCA)
- :book: __Reading__:
    + ISL 4.1-4.3
    + APM 12.2
- :microscope: __Lab 8__: Canonical Correlation Analysis (Mar-12, due Mar-16)
- :dart: __HW 4:__ Problem Set 4 (due: Mar-16 before midnight)

-----

## Transition to Classification Methods

- :card_index: __Dates__: Mar 12-16
- :paperclip: __Topics__: Transition into Classification methods with the introduction to Logistic Regression, and preliminary concepts for discriminant analysis.
- :file_folder: __Notes__:
    + [Logistic Regression (part I)](../slides/22-logistic-regression1.pdf)
    + [Logistic Regression (part II)](../slides/23-logistic-regression2.pdf)
    + [Preamble to Discriminant Analysis](../slides/24-discriminant-preamble.pdf)
- :book: __Reading__:
    + ISL 4.1-4.3; ESL 4.1 & 4.4
    + APM 12.2
- :microscope: __Lab 9__: Logistic Regression (Mar-19, due Mar-23)
- :mortar_board: __MIDTERM 1__: Friday Mar-16

-----

## Classification: Geometric Discriminant Analysis

- :card_index: __Dates__: Mar 19-23
- :paperclip: __Topics__: The origins and foundations of Discriminant Analysis (DA) are based on Ronald Fisher's geometric approach. This can be considered as classification with an unsupervised touch.
- :file_folder: __Notes__:
    + [Geometric Discriminant Analysis (part I)](../slides/25-geometric-discriminant1.pdf)
    + [Geometric Discriminant Analysis (part II)](../slides/26-geometric-discriminant2.pdf)
- :book: __Reading__:
    + ISL 4.4; ESL 4.2-4.3 
    + APM 12.3
- :microscope: __Lab 10__: Discriminant Analysis (Apr-02)
- :dart: __HW 5:__ Problem Set 5 (due: Apr-06 before midnight)

-----

## Classification: Probabilistic Discriminant Analysis

- :card_index: __Dates__: Apr 02-06
- :paperclip: __Topics__: Presentation of the probabilistic framework for classiciation purposes with the so-called Bayes Classifier. We move on from geometric DA to Probabilistic DA, and also discuss the non-parametric method kNN.
- :file_folder: __Notes__:
    + [Classification](../slides/27-classification.pdf) (slides by Hastie and Tibshirani)
        + Bayes Classifier
        + Linear and Quadratic Discriminant Analysis
        + K-Nearest Neighbors (kNN)
    + Discriminant Analysis Synthesis (chalk and talk)
- :book: __Reading__:
    + ISL 4.4; ESL 4.3
    + APM 13.5
- :microscope: __Lab 11__: Comparing Classification Methods (Apr-09)

-----

## Clustering

- :card_index: __Dates__: Apr 09-13
- :paperclip: __Topics__: Finding groups in data with Clustering. This is the second unpervised
learning tool of the course, covering partition methods as well as hierarchical 
agglomerative techniques.
- :file_folder: __Notes__:
    + K-means clustering
    + Hierarchical Clustering
- :book: __Reading__:
    + ISL 10; ESL 14.3
- :microscope: __Lab 12__: Clustering (Apr-16)
- :dart: __HW 6:__ Problem Set 6 (due: Apr-20 before midnight)

-----

## Tree-based Methods

- :card_index: __Dates__: Apr 16-20
- :paperclip: __Topics__: Summary of classifications methods, and introduction to decision trees as well as Tree-based methods.
- :file_folder: __Notes__:
    + [Classification Performance Measures](../apps/roc-curve/roc-curve-apm.md)
    + [Introduction to Decision Trees](../slides/28-trees-introduction.pdf)
    + [More about decision trees](../slides/29-decision-trees.pdf)
- :book: __Reading__:
    + ISL 4; ESL 9.2
    + APM 11
- :microscope: __Lab 13__: TBA (Apr-23)

-----

## Tree-based Methods

- :card_index: __Dates__: Apr 23-27
- :paperclip: __Topics__: More about tree-based methods.
- :file_folder: __Notes__:
    + [Intro to `rpart`](../papers/Intro-to-rpart.md)
    + [Tree-based methods](../slides/30-tree-based-methods.pdf) (slides by Hastie and Tibshirani)
        + Bagging
        + Random Forest
- :book: __Reading__:
    + ISL 8; ESL 10
    + APM 8

-----

## RRR Week

- :card_index: __Dates__: Apr 30-May 04
- :paperclip: __Topics__: No instruction.
- :mortar_board: __FINAL__: Tue May 8, 7-10pm (room TBA)



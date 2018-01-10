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
- :bomb: __HW 1__: Problem Set 1 (due: Feb-02 before midnight)

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
- :bomb: __HW 2__: Problem Set 2 (due: Feb-16 before midnight)

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
- :bomb: __HW 3__: Problem Set 3 (due: Mar-02 before midnight)


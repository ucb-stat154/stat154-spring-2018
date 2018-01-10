## Syllabus, Stat 154

+ Notes:
	- Tentative calendar (weekly topics), subject to changes depending on the pace of the course.
	- Labs: For the covered topics in a given week, the associated lab takes place on Monday of the following week.
	- ISL = _An Introduction to Statistical Learning_ (by James et al, 2015)
	- APM = _Applied Predictive Modeling_ (by Kuhn and Johnson, 2013)

-----

## Course Introduction

- :card_index: __Dates__: Jan 17-19
- :pushpin: __Topics__: Introduction, policies/logistics, and course in a nutshell
- :book: __Lecture__:
    + [About the course](../slides/00-course-info.pdf)
    + [Introduction](../slides/01-introduction.pdf)
- :books: __Reading__: ISL 1 & 2; APM 1
    + [Statistical Modeling: The Two Cultures](../papers/Breiman_2001_Statistical_Modeling_Two_Cultures.pdf) by Leo Breiman (2001)

-----

## Matrix Algebra Housekeeping

- :card_index: __Dates__: Jan 22-26
- :pushpin: __Topics__: Quick review of objects and functions in R to handle common (and not so common) matrix operations. Review of how to express basic statistical operations with vector-matrix notation, and discuss their geometric interpretations. Description of the data matrix, its rows-and-columns duality, and various types of cross-products.
- :book: __Lecture__:
    + [Matrices in R](../slides/02-matrix-in-R.pdf)
    + [Statistical operations with vector-matrix notation](../slides/03-matrix-stat-operations1.pdf)
    + [The duality of the data matrix](../slides/04-matrix-stat-operations2.pdf), and common cross-products X'X and XX'
- :microscope: __Lab 1__: [Warm-up with matrices in R](../labs/lab01-matrix-practice.pdf) (Jan-22)

-----

## Matrix Decompositions in R

- :card_index: __Dates__: Jan 29-Feb 02
- :pushpin: __Topics__: Review of matrix Decompositions with R, talking about the functions `svd()` and `eigen()`, the implications of the decompositions, data reduction, and visual displays.
- :book: __Lecture__:
    + [Singular Value Decomposition (SVD)](../slides/05-matrix-svd.pdf)
    + [Eigenvalue Decomposition (EVD)](../slides/06-matrix-eigen.pdf)
- :microscope: __Lab 2__: [Matrix decompositions and the power algorithm](../labs/lab02-matrix-decompositions.pdf) (Jan-29)

-----

## Principal Components Analysis (PCA)

- :card_index: __Dates__: Feb 05-09
- :pushpin: __Topics__: Principal Components Analysis is an unsupervised learning approach for studying the systematic structure of a data set (of quantitative variables). We'll discuss how PCA is connected with the SVD and EVD decompositions, how to interpret the outputs, and usefulness for Exploratory Data Analysis.
- :book: __Lecture__:
    + [Introduction to PCA](../slides/07-principal-components1.pdf)
    + [Painstaking PCA](../slides/08-principal-components2.pdf)
    + [More about PCA](../slides/09-principal-components3.pdf) (properties and derived results)
- :books: __Reading__: ISL 10; APM 3
    + [PCA](../papers/Abdi_2010_Principal_Component_Analysis.pdf) paper by Herve Abdi and Lynne Williams (2010)
- :microscope: __Lab 3__: [PCA in R](../labs/lab03-principal-components.pdf) (Feb-05)

-----


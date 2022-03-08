Pitch Presentation - linear regression with mtcars dataset
========================================================
author: Martin Bühler
date: 8.3.2022
autosize: true

Agenda
========================================================

1 Idea  
2 Usage of interface  
3 Reference


1 Idea
========================================================
<font size="5"> 

For exploratory data analysis of a dataset it's convenient to
look at the relation of two features and their linear regression.
The presented solution allows to select a dependent and independent variable
of the mtcars dataset.  
A box plot is displayed if the independent variable is a factor variable and
a scatter plot is displayed if the independent variable isn't a factor variable.  

This r-code output shows the structure of the mtcars dataset.

```r
str(mtcars)
```

```
'data.frame':	32 obs. of  11 variables:
 $ mpg : num  21 21 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2 ...
 $ cyl : num  6 6 4 6 8 6 8 4 4 6 ...
 $ disp: num  160 160 108 258 360 ...
 $ hp  : num  110 110 93 110 175 105 245 62 95 123 ...
 $ drat: num  3.9 3.9 3.85 3.08 3.15 2.76 3.21 3.69 3.92 3.92 ...
 $ wt  : num  2.62 2.88 2.32 3.21 3.44 ...
 $ qsec: num  16.5 17 18.6 19.4 17 ...
 $ vs  : num  0 0 1 1 0 1 0 1 1 1 ...
 $ am  : num  1 1 1 0 0 0 0 0 0 0 ...
 $ gear: num  4 4 4 3 3 3 3 4 4 4 ...
 $ carb: num  4 4 1 1 2 1 4 2 2 4 ...
```
</font>  

2 Usage of interface
========================================================
<font size="5"> 
1/ Dependent Variable: Select the dependent variable of the
mtcars dataset. This variable will be displayed on the y-axis of the resulting
plot and is always a discrete variable (not a factor variable)  
2/ Independent Variable: Select the independent variable of the
mtcars dataset. This variable will be displayed on the x-axis of the resulting
plot and can be either a discrete variable or a factor variable  
3/ The documentation can be selected by clicking on the tab "Documentation" or
adding "/?tab=Documentation" to the url  
4/ The tab "Plot output" shows the plot as well as the coefficients of the linear
model comprised of the independent and dependent variable  
</font> 
![Main interface](main.png)




3 Reference
========================================================


Link to this presentation: https://rpubs.com/tretro/DataPresentation  
  
Application on Shinyapps.io: https://tretro.shinyapps.io/mtcars  
  
Documentation of application: https://tretro.shinyapps.io/mtcars?tab=Documentation  
  
Link to Git repository: 



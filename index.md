---
title       : My Final Work
subtitle    : 
author      : LM
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Overview

This is a deliverable for the course Developing Data Products. A course that is a part of the Coursera Data Science Specialization.

The app developed for this course is available on: https://alexcaraca.shinyapps.io/finalwork/.

The code source is available on: https://github.com/alexcaraca/FinalWork.

--- .class #id 

## App detail  

The site provides a tools for select the expected price for a diamond according their carat size, cut and colour.  

We required you provide your desired carat size, the cut and the colour  

The result contains a plot and the expected result and uses the diamond dataset from [R].  

--- .class #id 

## Diamond Detail    

The data used is the diamond dataset (from the ggplot2 library). Let's look at a summary:




```r
summary(diamonds$carat)
```

```
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  0.2000  0.4000  0.7000  0.7979  1.0400  5.0100
```

```r
summary(diamonds$cut)
```

```
##      Fair      Good Very Good   Premium     Ideal 
##      1610      4906     12082     13791     21551
```

```r
summary(diamonds$color)
```

```
##     D     E     F     G     H     I     J 
##  6775  9797  9542 11292  8304  5422  2808
```

--- .class #id 

## Plotting    

There is a clear relation between carat size and price:


  

```r
print(g)
```

![plot of chunk unnamed-chunk-4](figure/unnamed-chunk-4-1.png)
--- .class #id   

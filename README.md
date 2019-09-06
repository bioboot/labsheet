
<!-- README.md is generated from README.Rmd. Please edit that file -->

## Labsheet Overview

<img align="right" src="http://thegrantlab.org/misc/logo.png"  width="280px" />

The goal of the **labsheet** package is to enable the easy authoring of
interactive web pages for student self-guided learning.

To see examples of labsheet output see [labsheet\_eg1.html]() and
[labsheet\_eg2.html]().

The package works by providing an RMarkdown template for generating HTML
hands-on worksheets as utilized in Barry’s Bioinformatics classes at
UCSD. This includes in-line R functions for creating student question
responses, interactive answer checking, score tracking, and accessory
functions for hide/reveal answer display. Extensive CSS style settings
are also provided as convenient R functions.

## Installation

You can install the development version of labsheet from
[GitHub](https://github.com/bioboot/labsheet) with:

``` r
devtools::install_github("bioboot/labsheet")
```

## Getting Started

To create an interactive worksheet in RStudio, click **File** -\> **New
File…** -\> **RMarkdown** and in the dialog box that appears, select
**From Template** and choose **Hands-on Q/A Web Exercises (labsheet)**.

This will result in a new RMarkdown document being generated with
example code and text demonstrating major features. Save and Knit the
file to HTML to see how it works.

> Alternatively (or if you’re not using RStudio) use:  
> `rmarkdown::draft("exercises.Rmd", "labsheet", "labsheet")`

## Related resources

Functions and features of the labsheet package are based on on ideas
from [Software Carpentry](https://software-carpentry.org/lessons/)
lessons and the [learnr](https://rstudio.github.io/learnr/) package.

Although labsheet currently has fewer features than RStudio’s learnr
package, it is more lightweight: whereas learnr tutorials must be either
hosted on a shiny server or run locally through an R/shiny process,
labsheet creates single standalone HTML files that require only a
JavaScript-enabled web browser. This means they will work well on any
web host including GitHub pages. The output HTML files can also be sent
directly to students and opened on their own computers, tablets or
chromebooks. labsheet is also much more simple to use.

## Available interactive widgets

The labsheet package provides functions that create HTML widgets using
[inline R
code](https://github.com/rstudio/cheatsheets/raw/master/rmarkdown-2.0.pdf).
These functions
include:

| function                | widget         | description                    |
| :---------------------- | :------------- | :----------------------------- |
| `fitb()`                | text box       | fill-in-the-blank question     |
| `mcq()`                 | pull-down menu | multiple choice question       |
| `torf()`                | pull-down menu | TRUE or FALSE question         |
| `hide()` and `unhide()` | button         | solution revealed when clicked |
| `question_start()`      | CSS            | style question block           |
| `question_end()`        | CSS            | style question block           |
| Others To Finish\!      | button         | OTHERS to add HERE             |

**Others**:

``` r
library(labsheet)
ls("package:labsheet")
#>  [1] "author"           "fitb"             "hide"            
#>  [4] "labsheet_default" "mcq"              "question_end"    
#>  [7] "question_start"   "round2"           "score_counter"   
#> [10] "strip_lzero"      "style_widgets"    "torf"            
#> [13] "total_correct"    "unhide"
```

The appearance of the question/answer text box and pull-down menu
widgets changes when users enter the correct answer. Answers can be
either static or dynamic (i.e., specified using R code). Running scores
and counting of correct answer responses is also provided by
`score_counter()` or
`total_correct()`.

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />This
work is licensed under a
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative
Commons Attribution-ShareAlike 4.0 International License</a>.

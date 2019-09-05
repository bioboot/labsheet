
<!-- README.md is generated from README.Rmd. Please edit that file -->

<link href="inst/reports/default/labsheet.css" rel="stylesheet" />

# The labsheet package

<img src="https://bioboot.github.io/bggn213_F19/assets/img/logo.png"  width="280px" />

The goal of labsheet is to enable instructors to easily create
interactive web pages that students can use in self-guided learning.
Although labsheet has fewer features than RStudio’s
[learnr](https://rstudio.github.io/learnr/) package, it is more
lightweight: whereas learnr tutorials must be either hosted on a shiny
server or run locally, labsheet creates standalone HTML files that
require only a JavaScript-enabled browser. It is also extremely simple
to use.

## Installation

You can install the development version of labsheet from
[GitHub](https://github.com/bioboot/labsheet) with:

``` r
devtools::install_github("bioboot/labsheet")
```

## Creating interactive widgets with inline code

The labsheet package provides functions that create HTML widgets using
[inline R
code](https://github.com/rstudio/cheatsheets/raw/master/rmarkdown-2.0.pdf).
These functions
are:

| function                | widget         | description                    |
| :---------------------- | :------------- | :----------------------------- |
| `fitb()`                | text box       | fill-in-the-blank question     |
| `mcq()`                 | pull-down menu | multiple choice question       |
| `torf()`                | pull-down menu | TRUE or FALSE question         |
| `hide()` and `unhide()` | button         | solution revealed when clicked |
| `others()`              | button         | OTHERS HERE                    |

The appearance of the text box and pull-down menu widgets changes when
users enter the correct answer. Answers can be either static or dynamic
(i.e., specified using R code). Widget styles can be changed using
`style_widgets()`.

Examples are provided in the **Web Exercises** R Markdown template. To
create a file from the labsheet template in RStudio, click `File -> New
File... -> RMarkdown` and in the dialog box that appears, select `From
Template` and choose `Hands-on Web Exercises (labsheet)`.

Alternatively (or if you’re not using RStudio) use:

``` r
rmarkdown::draft("exercises.Rmd", "labsheet", "labsheet")
```

Knit the file to HTML to see how it works. **Note: The widgets only
function in a JavaScript-enabled browser. The RStudio built-in browser
does not have JavaScript. Click the “Open in Browser” button to use your
operating system’s
browser.**

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />This
work is licensed under a
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative
Commons Attribution-ShareAlike 4.0 International License</a>.

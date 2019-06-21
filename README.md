# data-science-ish

## Background 

This is a repository for the [*KnoxData*](https://knoxdata.org/) presentation [*Data Science-Ish: The Use of Mixed Effects Models for Analyzing Complex Data*](https://www.meetup.com/knoxdata/events/261106895/).

> Mixed effects (or multilevel) models are extensions of linear models (regressions) that are commonly used in experimental research and policy and evaluation contexts, but are less widely-used by data scientists. In this talk, I aim to introduce mixed effects model as a data science-ish statistical method that can be useful and is easy to estimate and interpret. I focus on two examples using the lme4 package in R: one each that is focused on traditional research (modeling hierarchically nested data) and commercial (estimating the best product when products have different numbers of reviews) uses. Finally, I discuss the close connection between mixed effects models and Bayesian methods. This talk should be of interest to data scientists and academic researchers (and those somewhere in between or in related fields!).

## Slides

The slides are available here: https://jrosen48.github.io/data-science-ish

## Video

Video of the talk is available here: https://www.youtube.com/watch?v=1YY2FoCFIm4

## Code and Libraries Used

The code used to create the presentation is in `data-science-ish-presentation.Rmd`.

The packages required to run the code can be installed with the following commands:

```{r}
install.packages("lme4", "knitr", "tidyverse", "equatiomatic", "railtrails", "broom", "brms", "devtools")
```

```{r}
devtools::install_github("datalorax/equatiomatic")
```

### equatiomatic

The equatiomatic package is actively being developed; find the repository here if you're interested in contributing: https://github.com/datalorax/equatiomatic

### railtrails

The railtrails package is available here and can be used (and improved for) educational purposes: https://github.com/jrosen48/railtrails

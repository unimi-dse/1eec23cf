# Politcalparticipation Package

## Introduction
The package allows to study, analyze and plot the relationship between sections and voter turnout rate for the election held in Italy in 2018.

## Dataset
The package uses a dataset from "OpenData Terlizzi" (https://goo.gl/o1zTKc) adapted in order to highlight the most relevant data for the research.

## Installation

```R
devtools::install_github("unimi-dse/1eec23cf")
```

## Usage

```R
require("politcalparticipation")  
ParticipationForSection()
PlotFunction()
```
### ParticipationForSection()
The function returns a statistical analysis of the voter turnout rate referring to the sections for the political election held in Italy in 2018.

### PlotFunction()
The function allows to plot a scatter plot which links section and participation rate in the election, using a chromatic scale in order to underline the difference in voter turnout rate.

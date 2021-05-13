
<!--- README.md is generated from README.Rmd. Please edit that file -->

## locationmisc: Classes, widgets, and functions for the Location App

[![lifecycle](https://img.shields.io/badge/Lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/experimental)

### Overview

This package provides classes, widgets, and functions for the [Location
App](https://github.com/NCC-CNC/location-app).

### Installation

The package is only available from an [online coding
repository](https://github.com/NCC-CNC/locationmisc). To install it, use
the following R code.

``` r
if (!require(remotes))
  install.packages("remotes")
remotes::install_github("NCC-CNC/locationmisc")
```

### Usage

This package provides the following widgets:

-   `newSolutionSidebarPane()`: Constructs a sidebar pane for creating
    new solutions. It forms a panel that contains – in addition to
    standard `shiny` widgets (e.g. a button to generate a new solution)
    – the following widget:
    -   `solutionManager()`: Constructs a widget for controlling goals
        and factors for the themes and weights (respectively).
    -   `mapManagerSidebarPane()`: Constructs a sidebar pane for
        controlling the overall appearance of a `leaflet` map. It forms
        a panel that contains – in addition to standard `shiny` widgets
        – the widgets for controlling the appearance of weights, themes,
        and solutions.
        -   `mapManager()`: Constructs a widget for controlling the
            appearance of themes, weights, and solutions on a `leaflet`
            map.

The following example Shiny apps are available to visualize and test the
widgets. They can be viewed with the following system commands:

    # demo the newSolutionSidebarPane() widget
    make demo-solutionSettings

    # demo the mapManager() widget
    make demo-newSolutionPane

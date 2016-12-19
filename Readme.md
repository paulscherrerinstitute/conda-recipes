[![Build Status](https://travis-ci.org/paulscherrerinstitute/conda-recipes.svg?branch=master)](https://travis-ci.org/paulscherrerinstitute/conda-recipes) [![Build status](https://ci.appveyor.com/api/projects/status/693wstp22y29kdty?svg=true)](https://ci.appveyor.com/project/simongregorebner/conda-recipes)



# Overview
This is the collection of anaconda recipes for the Paul Scherrer Institute.

To build a recipe use:

```bash
conda build <recipe>
```


# Packages

## readline
This package is only required for __Linux__.
Due to shortcomings in the readline package that comes with anaconda we have to recompile and package the readline package with ncurses.

## epics-base
Package containing Epics base. Before building and installing epics-base make sure you have __readline__ installed before.

## pyepics
Pyepics (https://github.com/pyepics/) package including proper dependencies (i.e. to epics base)

[![Build Status](https://github.com/paulscherrerinstitute/conda-recipes/actions/workflows/conda_build.yml/badge.svg)](https://github.com/paulscherrerinstitute/conda-recipes/actions/workflows/conda_build.yml) [![Build status](https://ci.appveyor.com/api/projects/status/github/paulscherrerinstitute/conda-recipes?svg=true)](https://ci.appveyor.com/project/xiaoqiangwang/conda-recipes)



# Overview
This is the collection of anaconda recipes for the Paul Scherrer Institute.
They are automatically built using GitHub workflows (Linux and macOS) and AppVeyor (Windows).

To build a recipe manually:

```bash
conda build <recipe>
```

To add a new recipe:
1. Test the recipe locally.
2. If the recipe is of pure Python, i.e. _noarch_, add one line at step _Build pure python packages_ in file _.github/workflows/conda_build.yml_.
3. If the recipe requires compiling,
    1. Add one line at step _Build ${{ runner.os }} Packages_ in file _.github/workflows/conda_build.yml_.
    2. Add one line at step _install_ in file _.appveyor.yml_.
4. Commit and push your changes.

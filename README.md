# Mapping INBO color ring database to crbirding (SOVON) format

## Rationale

This repository contains the functionality to map data from the *kleurring* database, hosted by INBO, to SOVON format. Access to INBO's color ring database could be restricted.

## Workflow

See https://inbo.github.io/sovon/

## Repo structure

The repository structure is based on [Cookiecutter Data Science](http://drivendata.github.io/cookiecutter-data-science/). Files and directories indicated with `GENERATED` should not be edited manually.

```
├── README.md         : Description of this repository
├── LICENSE           : Repository license
├── .gitignore        : Files and directories to be ignored by git
│
├── data
│   └── input         : Files used to solve some issues
│   └── interim       : Temporary files
│   └── processed     : Finalized user, ring and observation data
│   └── external      : Data from SOVON or others
│
├── docs              : Repository website GENERATED
│
├── index.Rmd              : Website homepage
├── _bookdown.yml          : Settings to build website in docs/
│
└── src
    ├── 1_preprocessing.Rmd     : Script to preprocess and perform some data cleaning
    ├── 2_users.Rmd : Script to map user data
    ├── 3_birds.Rmd  : Script to map bird ring data
    ├── 4_observations.Rmd   : Script to map observations
```

## Installation

1. Clone this repository to your computer
2. Open the RStudio project file
3. Open the `index.Rmd` [R Markdown file](https://rmarkdown.rstudio.com/) in RStudio
4. Install any required packages
6. Click `Build > Build Book` to generate the processed data and build the website in `docs/`

## Contributors

[List of contributors](https://github.com/inbo/sovon/contributors)

## License

[MIT License](https://github.com/trias-project/unified-checklist/blob/master/LICENSE)

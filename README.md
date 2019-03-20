# Migrating INBO's colour-ring data to cr-birding.org

## Rationale

This repository contains the functionality to map/transform data from INBO's colour-ring database "meeuwen" to [cr-birding.org](http://www.cr-birding.org/), a platform hosted by SOVON. The "meeuwen" database (access restricted) contains volunteer submitted observations of colour-ringed or wing-tagged birds (mostly large gulls). These data are an important low-tech source of information to derive the life history of these individual birds and go back since 1986. By migration to cr-birding.org, volunteers will be able to submit observations online, rather than by email, making it more efficient to capture and manage data.

## Workflow

See https://inbo.github.io/cr-birding/

## Repo structure

The repository structure is based on [Cookiecutter Data Science](http://drivendata.github.io/cookiecutter-data-science/). Files and directories indicated with `GENERATED` should not be edited manually.

```
├── README.md         : Description of this repository
├── LICENSE           : Repository license
├── .gitignore        : Files and directories to be ignored by git
│
├── data
│   ├── input         : Data used to solve some issues
│   ├── interim       : Temporary data
│   └── processed     : Data in cr-birding format GENERATED
│
├── references        : Explanatory materials
│
├── docs              : Repository website GENERATED
│
├── index.Rmd         : Website homepage
├── _bookdown.yml     : Settings to build website in docs/
│
└── src
    ├── 1_preprocessing.Rmd : Script to read data from "meeuwen" and perform some data cleaning
    ├── 2_users.Rmd   : Script to map user data
    ├── 3_birds.Rmd   : Script to map bird ring data
    └── 4_observations.Rmd : Script to map observations
```

## Installation

1. Clone this repository to your computer
2. Open the RStudio project file
3. Open the `index.Rmd` [R Markdown file](https://rmarkdown.rstudio.com/) in RStudio
4. Install any required packages
6. Click `Build > Build Book` to generate the processed data and build the website in `docs/`

## Contributors

[List of contributors](https://github.com/inbo/cr-birding/contributors)

## License

[MIT License](https://github.com/inbo/cr-birding/blob/master/LICENSE)

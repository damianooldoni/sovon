# Mapping *kleurring* INBO database to crbirding (SOVON) format

## Rationale

This repository contains the functionality to access and process data from the *kleurring* database hosted by INBO. Access to such database is restricted.

## Workflow

source data from INBO database →  [mapping script](http://damianooldoni.github.io/sovon/map_inbo_data_to_sovon.html) → generated [generated files](https://github.com/damianooldoni/sovon/blob/master/data/processed/)

## Repo structure

The repository structure is based on [Cookiecutter Data Science](http://drivendata.github.io/cookiecutter-data-science/). Files and directories indicated with `GENERATED` should not be edited manually.

```
├── README.md         : Description of this repository
├── LICENSE           : Repository license
├── .gitignore        : Files and directories to be ignored by git
│
├── data
│   └── processed     : Darwin Core output of mapping script GENERATED
│
├── docs              : Repository website GENERATED
│
├── specifications    : Data specifications for the Darwin Core files
│
└── src
    ├── map_inbo_data_to_sovon.Rmd : mapping script, core functionality of this repository
    └── src.Rproj       : RStudio project file
```

## Installation

1. Clone this repository to your computer
2. Open the RStudio project file
3. Open the `map_inbo_data_to_sovon.Rmd` [R Markdown file](https://rmarkdown.rstudio.com/) in RStudio
4. Install any required package
5. Click `Run > Run All` to generate the processed data
6. Alternatively, click `Build > Build website` to generate the processed data and build the website in `/docs`


## Contributors

[List of contributors](https://github.com/damianooldoni/sovon/contributors)

## License

[MIT License](LICENSE)

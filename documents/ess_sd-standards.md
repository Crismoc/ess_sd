Standards for ESS round 9 supplementary data
================

## Introduction

The European Social Survey Supplementary Data project (ESS-SD) aims to
collect, process, document and publish contextual data to be used in the
analysis of the ninth round of the ESS. This data will be made publicly
available for its use by analysts totally free of charge and without
permission needed (CC-BY license for data and CC0 for metada),
considering a complete documentation.

The production process follows the guidelines proposed by the [TIER
project](https://www.projecttier.org/) protocol regarding the
organization and handling of files and directories. The final datasets
should comply with the [FAIR Data
principles](https://www.go-fair.org/fair-principles/). This means that
the data processed within this project must consider stable identifiers
for each data file (e.g., [DOI](https://www.doi.org/)), along
descriptive metadata which can be found in open data repositories (e.g.,
[Dataverse](https://dataverse.org/), [Google
datasearch](https://datasetsearch.research.google.com/)). Additionally,
for facilitating the accessibility and interoperability of the data,
standard and open source tools for data management will be used (e.g.,
R), alongside additional routines for proprietary software popular in
the social sciences (e.g., Stata, SPSS).

Two main levels of contextual data are considered: country and regional.
Regarding the latter, subdivisions are possible for countries
participating in the Nomenclature of Territorial Units for Statistics
([see](https://ec.europa.eu/eurostat/web/nuts/background)). The 30
participating countries are: Albania, Austria, Belgium, Bulgaria,
Croatia, Cyprus, Czechia, Denmark, Estonia, Finland, France, Germany,
Hungary, Iceland, Ireland, Italy, Latvia, Lithuania, Montenegro,
Netherlands, Norway, Poland, Portugal, Serbia, Slovakia, Slovenia,
Spain, Sweden, Switzerland, United Kingdom.

## Data sources

Data sources for this project will comprise any of those which meet the
following criteria:

  - The data is openly reusable (neither permission should be required
    nor payment must be made)
  - The data covers all or almost all of the countries participating in
    the ESS round 9.
  - The data fits into one of the following areas of indicators:
    economical, political, social,

## Data structure

Two rectangular data objects will be produced in separate files: one for
country level data, and another considering regional data (probably at
more than one level, e.g., NUTS-1 and NUTS-2). The output data files
will be structured in a format easy to read for multiple software, e.g.,
comma-separated values files, encoded in UTF-8.

### Country level data

This data object will contain 30 rows, each one corresponding to a
participating country of the ninth round of the ESS. The columns
(variables) will correspond to measurements or indicators for each
country around year 2018.

The codebook for this file will consider the following fields:  
\- **Variable name**: name of the column in the file (e.g: `gini`). This
names should meet criteria that makes them valid variable names in R,
Stata and SPSS: always lowercase letters.  
\- **Full name of measurement**: descriptive name of the measurement
(e.g: ‘Gini coefficient of equivalised disposable income’).  
\- **Description of measurement**: a clear short description of the
measurement (e.g: ‘The gini coefficient of equivalised total disposable
income. The total disposable income of a household is calculated by
adding together the personal income received by all of household members
plus income received at household level. Missing income information is
imputed. Disposable household income includes: all income from work
(employee wages and self-employment earnings); private income from
investment and property; transfers between households; all social
transfers received in cash including old-age pensions’).  
\- **Source of measurement**: original source where the data was
collected, considering the url for the website where the data was
retrieved (e.g: ‘Eurostat,
<https://ec.europa.eu/eurostat/data/database>’).  
\- **Year**: The year for which the measurement is calculated, stating
exceptions for countries in case there are (e.g: ‘2017 for all
countries, except for Albania (2016), and Slovakia (2018)’).  
\- **Notes**: if necessary, relevant remarks regarding the measurements
that are not stated in the above fields.

### Regional level data

## Project workflow

The workflow is

The recollection and documentation of the supplementary data should
differentiate between two roles: *retriever* - someone who finds
relevant data, structure it in a data file and documents it according to
the standards - and; *curator* - someone who checks the collected data
and the corresponding source and documentation -.

### 1\. Define

The first stage implies a process defining the required data

### 2\. Retrieve

### 3\. Document

### 4\. Curate

### 5\. Publish

## Data merging

Easy-to-implement routines for merging the supplementary data with the
latest dataset of the ESS round 9 will be developed for the main
softwares used in social sciences: R, Stata and SPSS.

Command files will be produced for different softwares to
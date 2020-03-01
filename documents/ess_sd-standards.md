Standards for ESS round 9 supplementary data
================

## Introduction

The European Social Survey Supplementary Data project (ESS-SD) aims to
collect, process, document and publish contextual data to be used in the
analysis of the ninth round of the ESS. This data will be made publicly
available for its use by analysts totally free of charge and without
permission needed (CC-BY license for data and CC0 for metadata),
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
    the ESS round 9 for year 2018 ideally, or years 2016 or 2017
    otherwise.

## Project workflow

The project workflow is presented in the figure below. It implies a
five-step process that can be iterated as needed for a complete
compilation of supplementary data. The dashed line represents the
possibility to iterate as needed after certain data has gone through
steps 1 to 3. Along steps 2 to 4 two roles should be differentiated:
*retriever*, someone who finds relevant data, structure it in a data
file and documents it according to the standards and; *curator*, someone
who checks the collected data and the corresponding source and
documentation. For any indicator or measure, these roles must be
assigned to different persons.

![wokflow](C:/Users/cristobal.moya/Documents/ess_sd/command-files/workflow.png)

### 1\. Define

The first stage implies a process defining the required data.

  - DEFINE CRITERIA FOR CHOOSING SUPDATA
  - SHORT SURVEY TO PIJE RESEARCHERS?

### 2\. Retrieve

The retrieval process consists of finding the required data in one or
more sources, checking its availability for all of the ESS countries
within the defined time frame and saving it on the project repository.

### 3\. Document

Documenting the data implies adding the information specified in the
[Data structure](#data-structure) in a command file that will produce
the final data codebook (e.g., the [`codebook` R
package](https://cran.r-project.org/web/packages/codebook/index.html)).

### 4\. Curate

Curating the data consists of checking the documentation and data saved
in steps 2 & 3, considering alternative sources containing the same
data. This process requires both checking the actual values saved, as
well as the completeness of the information in the codebook.

### 5\. Publish

The publishing step has two sub-components:

  - The produced data objects should be documented, considering the
    addition of metadata also to the dataset, in order to upload them to
    open repositories.

  - The whole process should be documented in a methodological report,
    describing the file objects produced and their codebooks, as well as
    providing concrete examples of how to use the ESS supplementary data
    with mainstream softwares.

## Data structure

Two rectangular data objects will be produced in separate files: one for
country level data, and another considering regional data (probably at
more than one level, e.g., NUTS-1 and NUTS-2). The output data files
will be structured in a format easy to read for multiple software, e.g.,
comma delimited files, encoded in UTF-8.

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

## Data merging

Easy-to-implement routines for merging the supplementary data with the
latest dataset of the ESS round 9 will be developed for the main
softwares used in social sciences: R, Stata and SPSS. Command files will
be produced for each of them to facilitate joining the supplementary
data into the ESS main data file.

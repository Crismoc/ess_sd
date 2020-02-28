# Packages
if (!require("pacman")) install.packages(pacman)
pacman::p_load(xml2, 
               rvest,
               dplyr)

# ESS round 9 countries

## Directly scrape participating countries tables from ESS web if file is not in repo
if (!file.exists("original-data/ess_r9-participating_countries.Rds")) {
  url <- "https://www.europeansocialsurvey.org/about/participating_countries.html"
  countries <- url %>% 
    read_html() %>% 
    html_table(header = T) %>% 
    `[[`(1) %>% 
    `colnames<-`(c("country", paste0(rep("round", 9), "_", 1:9)))
  saveRDS(countries, "original-data/ess_r9-participating_countries.Rds")
  file.copy("original-data/ess_r9-participating_countries.Rds", 
            "analysis-data")
}

## Differentiate countries with available data before May 2020
countries_r9 <- readRDS("analysis-data/ess_r9-participating_countries.Rds") %>%
  filter(round_9 != "") %>% 
  select(country) %>% 
  mutate(ess_rls = ifelse(country %in% 
                            c("Austria", "Belgium", "Bulgaria", "Cyprus", "Czechia",
                              "Estonia", "Finland", "France", "Germany", "Hungary",
                              "Ireland", "Italy", "Netherlands", "Norway", "Poland",
                              "Serbia", "Slovenia", "Switzerland", "United Kingdom"), 
                          1, 0))

### Check that 19 countries are in new variable
sum(countries_r9$ess_rls) == 19


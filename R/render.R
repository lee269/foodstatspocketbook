library(here)

rmarkdown::render(input = here::here("R", "Summary.Rmd"), output_dir = here::here("output"))
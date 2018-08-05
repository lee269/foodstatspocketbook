library(here)

rmarkdown::render(input = here::here("R", "Summary.Rmd"),
                  output_dir = here::here("output"), 
                  params = list(
                    year = 2017,
                    infographic = "agrifoodchain-infographic.png",
                    dataset1 = "foodchaingva.csv",
                    dataset2 = "foodstatisticspocketbook-foodchainproductivity-19oct17.csv",
                    dataset3 = "employment.csv",
                    dataset4 = "foodstatisticspocketbook-consumerexpenditure-19oct17.csv",
                    dataset5 = "foodstatisticspocketbook-foodpriceinflation-19oct17.csv",
                    dataset6 = "retailprices.csv",
                    dataset7 = "mintel.csv",
                    dataset8 = "origins.csv",
                    dataset9 = "exports.csv"
                  ))
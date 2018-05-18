###############
### Library ###
###############
library (dplyr)
library (magrittr)

setwd ("C:/Users/taman/Documents/Pretty E/")

radial_bar = readRDS("e_radial_bar.rds")
radial_lines = readRDS ("e_radial_lines.rds")
parallel_lines = readRDS ("e_parallel_lines.rds")
spiral = readRDS ("e_spiral.rds")
parametric = readRDS("e_parametric.rds")


df = radial_bar %>% 
          bind_rows (radial_lines) %>%
          bind_rows (parallel_lines) %>%
          bind_rows (spiral) %>%
          bind_rows (parametric)


write.csv (df, file = "e_viz_data.csv")

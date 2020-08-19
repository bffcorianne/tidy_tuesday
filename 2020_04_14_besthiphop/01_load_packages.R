# r4ds - Tidy Tuesday 
# Hip Hop Artists and Rankings Analysis
# 
# 
# 
# 
# Load necessary packages
pacman::p_load(tidyverse, # manipulation, cleansing, modeling, graphs
               devtools,  # installing packages from source where necessary (tidytuesdayR)
               Hmisc,     # EDA summaries, cleansing. describe(), 
               DataExplorer,
               moderndive,
               summarytools)

# install tidytuesdayR package from source b/c it has the 2020 datasets.
devtools::install_github("thebioengineer/tidytuesdayR")

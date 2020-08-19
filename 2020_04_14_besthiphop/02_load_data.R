#### Load Data
# from https://github.com/rfordatascience/tidytuesday/blob/master/data/2020/2020-04-14/readme.md


# you can import from github or
polls <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-04-14/polls.csv')
rankings <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-04-14/rankings.csv')


# import from tidytuesdayR() package which has all datasets from tidy tuesday. Handy!
# get tidytuesdayR package from source to have teh 2020 data sets.
devtools::install_github("thebioengineer/tidytuesdayR")

# load by date tt_load('YYYY-MM-DD') or week tt_load(YYYY, week = ##).
# I prefer date
tuesdata <- tidytuesdayR::tt_load('2020-04-14')



# tuesdata is a list w/ two nested tibbles. need to separate them for analysis.
polls <- tuesdata$polls
rankings <- tuesdata$rankings

# 03_cleanse_and_explore
# 


# basic exploration
# 
# 
# summary
summary(tuesdata)
# tibble, two list tibbles
summary(polls)
summary(rankings)

# notable: year. median is 1996. 
glimpse(rankings)
# n - n5 are rankings of eacg 



DataExplorer::introduce(polls)
DataExplorer::plot_missing(polls)

# critic_country2 is null most of the time. remove
polls <- polls %>% select(-critic_country2)

glimpse(polls)

# continuous vars
DataExplorer::plot_density(polls)


# multivariate / correlations <3
DataExplorer::plot_correlation(polls)

# categorical bars
DataExplorer::plot_bar(polls)
ggsave('eda_cat_plotbar.pdf')
#  :/ most artists are male 

# make a whole report
DataExplorer::create_report(polls)


# come back to year. most artists are in the mid90s


# I'm curious about gender and rankings. 
polls %>% 
  select(gender, rank) %>% 
  group_by(gender) %>%
  summarise(mean = mean(rank)) %>% 
  ungroup()


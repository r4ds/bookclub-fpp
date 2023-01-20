# Chapter 2 - Ex 9
library(fpp3)
# Use the following graphics functions:
#  - autoplot()
#  - gg_season()
#  - gg_subseries()
#  - gg_lag()
#  - ACF()
# explore features from the following time series:
# - “Total Private” Employed from us_employment,
# - Bricks from aus_production,
# - Hare from pelt,
# - “H02” Cost from PBS
# - us_gasoline.


# 1
us_employment %>% # count(Title)
  filter(Title=="Total Private") %>%
  autoplot()
us_employment %>%
  filter(Title=="Total Private") %>%
  gg_season(y = Employed,period = "year",labels = "both")
us_employment %>%
  filter(Title=="Total Private") %>%
  gg_subseries()
us_employment %>%
  filter(Title=="Total Private") %>%
  gg_lag()
us_employment %>%
  filter(Title=="Total Private") %>%
ACF(Employed,lag_max = 100) %>%
  autoplot()


# 2
aus_production %>%# head
  select(Quarter,Bricks)%>%#count(Quarter)%>%View
  #filter(Quarter=="1960 Q1","1985 Q1"))%>%
  #autoplot()
  #gg_season()
  #gg_subseries()
  # gg_lag()
  ACF(Bricks, lag_max = 10) %>%
  autoplot()


# 3
pelt %>%
  select(-Lynx)%>%
  #autoplot()
  #gg_subseries()
  #gg_lag()
  ACF(Hare) %>%
  autoplot()


# 4
PBS%>% # count(ATC2)%>%View
filter(ATC2=="H02")%>% # count(Type)
  #autoplot(Cost)
  #gg_season(Cost)
  #gg_subseries(Cost)
  #filter(Concession=="Concessional",
  #       Type=="Co-payments") %>%
  #gg_lag(y=Cost)
  ACF(Cost) %>%
  autoplot()

# 5
us_gasoline %>%
  #autoplot()
  #gg_season()
  #gg_lag()
  ACF(Barrels) %>%
  autoplot()


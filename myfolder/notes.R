# install.packages("fpp3")
library(fpp3)

fpp3::fpp3_packages()
tsibbledata::olympic_running%>%head
tsibbledata::PBS%>%head
data()

PBS %>%
  filter(ATC2 == "A10") %>%
  select(Month, Concession, Type, Cost) %>%
  summarise(TotalC = sum(Cost)) %>%
  mutate(Cost = TotalC / 1e6) -> a10


a10 %>%
  ggplot(aes(Month,Cost))+
  geom_point(size=0.2)+
  geom_line()


prison <- readr::read_csv("https://OTexts.com/fpp3/extrafiles/prison_population.csv")

prison%>%head

prison1 <- prison %>%
  mutate(Quarter = yearquarter(Date)) %>%
  select(-Date) %>%
  as_tsibble(key = c(State, Gender, Legal, Indigenous),
             index = Quarter)
prison1

tsibbledata::ansett%>%class
melsyd_economy <- ansett %>%
  filter(Airports == "MEL-SYD", Class == "Economy") %>%
  mutate(Passengers = Passengers/1000)
autoplot(melsyd_economy, Passengers) +
  labs(title = "Ansett airlines economy class",
       subtitle = "Melbourne-Sydney",
       y = "Passengers ('000)")


a10 %>%
  feasts::gg_season(Cost, labels = "both") +
  labs(y = "$ (millions)",
       title = "Seasonal plot: Antidiabetic drug sales")

holidays <- tourism %>%
  filter(Purpose == "Holiday") %>%
  group_by(State) %>%
  summarise(Trips = sum(Trips))

holidays %>%
  feasts::gg_subseries(Trips) +
  labs(y = "Overnight trips ('000)",
       title = "Australian domestic holidays")


recent_production <- aus_production %>%
  filter(year(Quarter) >= 2000)
recent_production %>%
  feasts::gg_lag(Beer, geom = "point") +
  labs(x = "lag(Beer, k)")


recent_production %>% feasts::ACF(Beer, lag_max = 9)


set.seed(30)
y <- tsibble::tsibble(sample = 1:50, wn = rnorm(50), index = sample)
y %>% autoplot(wn) + labs(title = "White noise", y = "")



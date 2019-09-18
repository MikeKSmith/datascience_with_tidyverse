library(tidyverse)

Puromycin %>%
  group_by(conc, state) %>%
  summarise(rate = mean(rate)) %>%
  pivot_wider(names_from = state, values_from = rate) %>%
  write_csv(path = file.path("data","Puromycin_example.csv"))

airquality %>%
  mutate(Date = paste(Month, Day, "1973", sep="/")) %>%
  select(-Month, -Day) %>%
  write_csv(path = file.path("data","airquality_example.csv"))
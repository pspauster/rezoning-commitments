library(tidyverse)

rezoning_commitments <- read_csv("https://data.cityofnewyork.us/resource/fd95-5ihz.csv?$LIMIT=10000") %>% 
  mutate(id = paste0(rezoning_area, "-", map_order))

rezoning_commitments %>% 
  group_by(rezoning_area) %>% 
  summarize(commitments = n_distinct(id))

rezoning_commitments %>% 
  group_by(rezoning_policy_domain) %>% 
  summarize(commitments = n_distinct(id))



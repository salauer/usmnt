library(dplyr)
library(tidyr)
game_dat <- read.csv("data-raw/Octagon.csv")

game_stats <- game_dat %>%
    transmute(Date, Team=Home, Opp=Away, Home=T, GF=Home.Score, GA=Away.Score) %>%
    bind_rows(game_dat %>%
                  transmute(Date, Team=Away, Opp=Home, Home=F, GF=Away.Score, GA=Home.Score)) %>%
    group_by(Opp) %>%
    mutate(Opp_GFpg=(sum(GA) - GA)/(n() - 1),
           Opp_GApg=(sum(GF) - GF)/(n() - 1)) %>%
    ungroup() %>%
    mutate(GF_above=GF-Opp_GApg,
           GA_below=Opp_GFpg-GA)


team_sums <- game_stats %>%
    group_by(Team) %>%
    summarize(Opp_GF=mean(Opp_GFpg) %>% round(2),
              Opp_GA=mean(Opp_GApg) %>% round(2),
              Opp_diff=round(Opp_GF-Opp_GA,2),
              GF_above=mean(GF_above) %>% round(2),
              GA_below=mean(GA_below) %>% round(2),
              G_better=GF_above + GA_below)

hfa <- game_stats %>%
    group_by(Home) %>%
    summarize(GF=mean(GF),
              GA=mean(GA),
              GD=GF-GA,
              GF_above=mean(GF_above),
              GA_below=mean(GA_below),
              G_better=GF_above+GA_below)


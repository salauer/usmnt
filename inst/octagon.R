library(dplyr)
library(tidyr)

game_dat <- read.csv("data-raw/Octagon.csv")

game_stats <- game_dat %>%
    transmute(Date=lubridate::ymd(paste0("2021/", Date)),
              Team=Home,
              Opp=Away,
              Place="Home",
              GF=Home.Score,
              GA=Away.Score) %>%
    bind_rows(game_dat %>%
                  transmute(Date=lubridate::ymd(paste0("2021/", Date)),
                            Team=Away,
                            Opp=Home,
                            Place="Away",
                            GF=Away.Score,
                            GA=Home.Score)) %>%
    group_by(Opp) %>%
    mutate(GD=GF-GA,
           Opp_GFpg=(sum(GA) - GA)/(n() - 1),
           Opp_GApg=(sum(GF) - GF)/(n() - 1),
           Opp_GDpg=Opp_GFpg-Opp_GApg) %>%
    ungroup() %>%
    mutate(GF_above=GF-Opp_GApg,
           GA_below=Opp_GFpg-GA,
           G_better=GF_above + GA_below,
           Points=ifelse(GF > GA, 3,
                         ifelse(GF==GA, 1, 0)))


team_sums <- game_stats %>%
    group_by(Team) %>%
    summarize(Opp_GF=mean(Opp_GFpg) %>% round(2),
              Opp_GA=mean(Opp_GApg) %>% round(2),
              Opp_diff=round(Opp_GF-Opp_GA,2),
              GF_above=mean(GF_above) %>% round(2),
              GA_below=mean(GA_below) %>% round(2),
              G_better=GF_above + GA_below)

game_stats %>%
    group_by(Place) %>%
    summarize(GF=mean(GF),
              GA=mean(GA),
              GD=GF-GA,
              GF_above=mean(GF_above),
              GA_below=mean(GA_below),
              G_better=GF_above+GA_below)


## USMNT Octagon

CONCACAF has entered the Octagon, and I wanted to see which teams have
had the hardest/easiest schedules so far and who has performed best
relative to expectations. What follows is super basic (you can find my
exploratory analysis code in `inst/octagon.R`).

### Who Played Whom and Results

With 8 teams each playing 5 games so far, it’s hard to understand
everything that has happened so far looking at the traditional
schedule/results format. Sometimes you just want to see who everyone has
played and the scores. That’s what we’ve got here, with each game
represented twice, with both the home team and away team in the `Team`
column:

<table class="table" style="margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
Date
</th>
<th style="text-align:left;">
Team
</th>
<th style="text-align:left;">
Opponent
</th>
<th style="text-align:left;">
Place
</th>
<th style="text-align:center;">
GF
</th>
<th style="text-align:center;">
GA
</th>
<th style="text-align:center;">
GD
</th>
<th style="text-align:center;">
Points
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
2021-09-02
</td>
<td style="text-align:left;">
Canada
</td>
<td style="text-align:left;">
Honduras
</td>
<td style="text-align:left;">
Home
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-05
</td>
<td style="text-align:left;">
Canada
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:left;">
Away
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-08
</td>
<td style="text-align:left;">
Canada
</td>
<td style="text-align:left;">
El Salvador
</td>
<td style="text-align:left;">
Home
</td>
<td style="text-align:center;">
3
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
3
</td>
<td style="text-align:center;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-10-07
</td>
<td style="text-align:left;">
Canada
</td>
<td style="text-align:left;">
Mexico
</td>
<td style="text-align:left;">
Away
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
1
</td>
</tr>
<tr>
<td style="text-align:left;border-bottom: 1px solid">
2021-10-10
</td>
<td style="text-align:left;border-bottom: 1px solid">
Canada
</td>
<td style="text-align:left;border-bottom: 1px solid">
Jamaica
</td>
<td style="text-align:left;border-bottom: 1px solid">
Away
</td>
<td style="text-align:center;border-bottom: 1px solid">
0
</td>
<td style="text-align:center;border-bottom: 1px solid">
0
</td>
<td style="text-align:center;border-bottom: 1px solid">
0
</td>
<td style="text-align:center;border-bottom: 1px solid">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-02
</td>
<td style="text-align:left;">
Costa Rica
</td>
<td style="text-align:left;">
Panama
</td>
<td style="text-align:left;">
Away
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-05
</td>
<td style="text-align:left;">
Costa Rica
</td>
<td style="text-align:left;">
Mexico
</td>
<td style="text-align:left;">
Home
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
-1
</td>
<td style="text-align:center;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-08
</td>
<td style="text-align:left;">
Costa Rica
</td>
<td style="text-align:left;">
Jamaica
</td>
<td style="text-align:left;">
Home
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-10-07
</td>
<td style="text-align:left;">
Costa Rica
</td>
<td style="text-align:left;">
Honduras
</td>
<td style="text-align:left;">
Away
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
1
</td>
</tr>
<tr>
<td style="text-align:left;border-bottom: 1px solid">
2021-10-10
</td>
<td style="text-align:left;border-bottom: 1px solid">
Costa Rica
</td>
<td style="text-align:left;border-bottom: 1px solid">
El Salvador
</td>
<td style="text-align:left;border-bottom: 1px solid">
Home
</td>
<td style="text-align:center;border-bottom: 1px solid">
2
</td>
<td style="text-align:center;border-bottom: 1px solid">
1
</td>
<td style="text-align:center;border-bottom: 1px solid">
1
</td>
<td style="text-align:center;border-bottom: 1px solid">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-02
</td>
<td style="text-align:left;">
El Salvador
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:left;">
Home
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-05
</td>
<td style="text-align:left;">
El Salvador
</td>
<td style="text-align:left;">
Honduras
</td>
<td style="text-align:left;">
Home
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-08
</td>
<td style="text-align:left;">
El Salvador
</td>
<td style="text-align:left;">
Canada
</td>
<td style="text-align:left;">
Away
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
3
</td>
<td style="text-align:center;">
-3
</td>
<td style="text-align:center;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-10-07
</td>
<td style="text-align:left;">
El Salvador
</td>
<td style="text-align:left;">
Panama
</td>
<td style="text-align:left;">
Home
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
3
</td>
</tr>
<tr>
<td style="text-align:left;border-bottom: 1px solid">
2021-10-10
</td>
<td style="text-align:left;border-bottom: 1px solid">
El Salvador
</td>
<td style="text-align:left;border-bottom: 1px solid">
Costa Rica
</td>
<td style="text-align:left;border-bottom: 1px solid">
Away
</td>
<td style="text-align:center;border-bottom: 1px solid">
1
</td>
<td style="text-align:center;border-bottom: 1px solid">
2
</td>
<td style="text-align:center;border-bottom: 1px solid">
-1
</td>
<td style="text-align:center;border-bottom: 1px solid">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-02
</td>
<td style="text-align:left;">
Honduras
</td>
<td style="text-align:left;">
Canada
</td>
<td style="text-align:left;">
Away
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-05
</td>
<td style="text-align:left;">
Honduras
</td>
<td style="text-align:left;">
El Salvador
</td>
<td style="text-align:left;">
Away
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-08
</td>
<td style="text-align:left;">
Honduras
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:left;">
Home
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
4
</td>
<td style="text-align:center;">
-3
</td>
<td style="text-align:center;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-10-07
</td>
<td style="text-align:left;">
Honduras
</td>
<td style="text-align:left;">
Costa Rica
</td>
<td style="text-align:left;">
Home
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
1
</td>
</tr>
<tr>
<td style="text-align:left;border-bottom: 1px solid">
2021-10-10
</td>
<td style="text-align:left;border-bottom: 1px solid">
Honduras
</td>
<td style="text-align:left;border-bottom: 1px solid">
Mexico
</td>
<td style="text-align:left;border-bottom: 1px solid">
Away
</td>
<td style="text-align:center;border-bottom: 1px solid">
0
</td>
<td style="text-align:center;border-bottom: 1px solid">
3
</td>
<td style="text-align:center;border-bottom: 1px solid">
-3
</td>
<td style="text-align:center;border-bottom: 1px solid">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-02
</td>
<td style="text-align:left;">
Jamaica
</td>
<td style="text-align:left;">
Mexico
</td>
<td style="text-align:left;">
Away
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
2
</td>
<td style="text-align:center;">
-1
</td>
<td style="text-align:center;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-05
</td>
<td style="text-align:left;">
Jamaica
</td>
<td style="text-align:left;">
Panama
</td>
<td style="text-align:left;">
Home
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
3
</td>
<td style="text-align:center;">
-3
</td>
<td style="text-align:center;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-08
</td>
<td style="text-align:left;">
Jamaica
</td>
<td style="text-align:left;">
Costa Rica
</td>
<td style="text-align:left;">
Away
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-10-07
</td>
<td style="text-align:left;">
Jamaica
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:left;">
Away
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
2
</td>
<td style="text-align:center;">
-2
</td>
<td style="text-align:center;">
0
</td>
</tr>
<tr>
<td style="text-align:left;border-bottom: 1px solid">
2021-10-10
</td>
<td style="text-align:left;border-bottom: 1px solid">
Jamaica
</td>
<td style="text-align:left;border-bottom: 1px solid">
Canada
</td>
<td style="text-align:left;border-bottom: 1px solid">
Home
</td>
<td style="text-align:center;border-bottom: 1px solid">
0
</td>
<td style="text-align:center;border-bottom: 1px solid">
0
</td>
<td style="text-align:center;border-bottom: 1px solid">
0
</td>
<td style="text-align:center;border-bottom: 1px solid">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-02
</td>
<td style="text-align:left;">
Mexico
</td>
<td style="text-align:left;">
Jamaica
</td>
<td style="text-align:left;">
Home
</td>
<td style="text-align:center;">
2
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-05
</td>
<td style="text-align:left;">
Mexico
</td>
<td style="text-align:left;">
Costa Rica
</td>
<td style="text-align:left;">
Away
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-08
</td>
<td style="text-align:left;">
Mexico
</td>
<td style="text-align:left;">
Panama
</td>
<td style="text-align:left;">
Away
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-10-07
</td>
<td style="text-align:left;">
Mexico
</td>
<td style="text-align:left;">
Canada
</td>
<td style="text-align:left;">
Home
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
1
</td>
</tr>
<tr>
<td style="text-align:left;border-bottom: 1px solid">
2021-10-10
</td>
<td style="text-align:left;border-bottom: 1px solid">
Mexico
</td>
<td style="text-align:left;border-bottom: 1px solid">
Honduras
</td>
<td style="text-align:left;border-bottom: 1px solid">
Home
</td>
<td style="text-align:center;border-bottom: 1px solid">
3
</td>
<td style="text-align:center;border-bottom: 1px solid">
0
</td>
<td style="text-align:center;border-bottom: 1px solid">
3
</td>
<td style="text-align:center;border-bottom: 1px solid">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-02
</td>
<td style="text-align:left;">
Panama
</td>
<td style="text-align:left;">
Costa Rica
</td>
<td style="text-align:left;">
Home
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-05
</td>
<td style="text-align:left;">
Panama
</td>
<td style="text-align:left;">
Jamaica
</td>
<td style="text-align:left;">
Away
</td>
<td style="text-align:center;">
3
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
3
</td>
<td style="text-align:center;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-08
</td>
<td style="text-align:left;">
Panama
</td>
<td style="text-align:left;">
Mexico
</td>
<td style="text-align:left;">
Home
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-10-07
</td>
<td style="text-align:left;">
Panama
</td>
<td style="text-align:left;">
El Salvador
</td>
<td style="text-align:left;">
Away
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
-1
</td>
<td style="text-align:center;">
0
</td>
</tr>
<tr>
<td style="text-align:left;border-bottom: 1px solid">
2021-10-10
</td>
<td style="text-align:left;border-bottom: 1px solid">
Panama
</td>
<td style="text-align:left;border-bottom: 1px solid">
United States
</td>
<td style="text-align:left;border-bottom: 1px solid">
Home
</td>
<td style="text-align:center;border-bottom: 1px solid">
1
</td>
<td style="text-align:center;border-bottom: 1px solid">
0
</td>
<td style="text-align:center;border-bottom: 1px solid">
1
</td>
<td style="text-align:center;border-bottom: 1px solid">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-02
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:left;">
El Salvador
</td>
<td style="text-align:left;">
Away
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-05
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:left;">
Canada
</td>
<td style="text-align:left;">
Home
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-08
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:left;">
Honduras
</td>
<td style="text-align:left;">
Away
</td>
<td style="text-align:center;">
4
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
3
</td>
<td style="text-align:center;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-10-07
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:left;">
Jamaica
</td>
<td style="text-align:left;">
Home
</td>
<td style="text-align:center;">
2
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
2
</td>
<td style="text-align:center;">
3
</td>
</tr>
<tr>
<td style="text-align:left;border-bottom: 1px solid">
2021-10-10
</td>
<td style="text-align:left;border-bottom: 1px solid">
United States
</td>
<td style="text-align:left;border-bottom: 1px solid">
Panama
</td>
<td style="text-align:left;border-bottom: 1px solid">
Away
</td>
<td style="text-align:center;border-bottom: 1px solid">
0
</td>
<td style="text-align:center;border-bottom: 1px solid">
1
</td>
<td style="text-align:center;border-bottom: 1px solid">
-1
</td>
<td style="text-align:center;border-bottom: 1px solid">
0
</td>
</tr>
</tbody>
</table>

## Kinda Advanced Stats

To figure out who has played the hardest slate so far, I look at how a
team’s opponents fared in their other games and how the team then
performed relative to that. Here you can see each team and their
opponents average goals for and against in other games:

<table class="table" style="margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
Team
</th>
<th style="text-align:center;">
Opp Avg GF
</th>
<th style="text-align:center;">
Opp Avg GA
</th>
<th style="text-align:center;">
Opp Avg GD
</th>
<th style="text-align:center;">
Points
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Jamaica
</td>
<td style="text-align:center;">
1.05
</td>
<td style="text-align:center;">
0.60
</td>
<td style="text-align:center;">
0.45
</td>
<td style="text-align:center;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
Honduras
</td>
<td style="text-align:center;">
0.90
</td>
<td style="text-align:center;">
0.75
</td>
<td style="text-align:center;">
0.15
</td>
<td style="text-align:center;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
Panama
</td>
<td style="text-align:center;">
1.00
</td>
<td style="text-align:center;">
0.85
</td>
<td style="text-align:center;">
0.15
</td>
<td style="text-align:center;">
8
</td>
</tr>
<tr>
<td style="text-align:left;">
El Salvador
</td>
<td style="text-align:center;">
0.90
</td>
<td style="text-align:center;">
0.85
</td>
<td style="text-align:center;">
0.05
</td>
<td style="text-align:center;">
5
</td>
</tr>
<tr>
<td style="text-align:left;">
Mexico
</td>
<td style="text-align:center;">
0.75
</td>
<td style="text-align:center;">
0.80
</td>
<td style="text-align:center;">
-0.05
</td>
<td style="text-align:center;">
11
</td>
</tr>
<tr>
<td style="text-align:left;">
Canada
</td>
<td style="text-align:center;">
0.90
</td>
<td style="text-align:center;">
1.05
</td>
<td style="text-align:center;">
-0.15
</td>
<td style="text-align:center;">
7
</td>
</tr>
<tr>
<td style="text-align:left;">
United States
</td>
<td style="text-align:center;">
0.70
</td>
<td style="text-align:center;">
0.95
</td>
<td style="text-align:center;">
-0.25
</td>
<td style="text-align:center;">
8
</td>
</tr>
<tr>
<td style="text-align:left;">
Costa Rica
</td>
<td style="text-align:center;">
0.80
</td>
<td style="text-align:center;">
1.15
</td>
<td style="text-align:center;">
-0.35
</td>
<td style="text-align:center;">
6
</td>
</tr>
</tbody>
</table>

Jamaica and Honduras have had the hardest schedules (by virtue of not
playing themselves or each other). Costa Rica and the US have had the
easiest.

<table class="table" style="margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
Team
</th>
<th style="text-align:center;">
Opp Avg GF
</th>
<th style="text-align:center;">
Opp Avg GA
</th>
<th style="text-align:center;">
Opp Avg GD
</th>
<th style="text-align:center;">
GF above Opp Avg
</th>
<th style="text-align:center;">
GA below Opp Avg
</th>
<th style="text-align:center;">
GD above Avg
</th>
<th style="text-align:center;">
Points
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Mexico
</td>
<td style="text-align:center;">
0.75
</td>
<td style="text-align:center;">
0.80
</td>
<td style="text-align:center;">
-0.05
</td>
<td style="text-align:center;">
0.80
</td>
<td style="text-align:center;">
0.15
</td>
<td style="text-align:center;">
0.95
</td>
<td style="text-align:center;">
11
</td>
</tr>
<tr>
<td style="text-align:left;">
Panama
</td>
<td style="text-align:center;">
1.00
</td>
<td style="text-align:center;">
0.85
</td>
<td style="text-align:center;">
0.15
</td>
<td style="text-align:center;">
0.15
</td>
<td style="text-align:center;">
0.60
</td>
<td style="text-align:center;">
0.75
</td>
<td style="text-align:center;">
8
</td>
</tr>
<tr>
<td style="text-align:left;">
United States
</td>
<td style="text-align:center;">
0.70
</td>
<td style="text-align:center;">
0.95
</td>
<td style="text-align:center;">
-0.25
</td>
<td style="text-align:center;">
0.45
</td>
<td style="text-align:center;">
0.10
</td>
<td style="text-align:center;">
0.55
</td>
<td style="text-align:center;">
8
</td>
</tr>
<tr>
<td style="text-align:left;">
Canada
</td>
<td style="text-align:center;">
0.90
</td>
<td style="text-align:center;">
1.05
</td>
<td style="text-align:center;">
-0.15
</td>
<td style="text-align:center;">
0.15
</td>
<td style="text-align:center;">
0.30
</td>
<td style="text-align:center;">
0.45
</td>
<td style="text-align:center;">
7
</td>
</tr>
<tr>
<td style="text-align:left;">
Costa Rica
</td>
<td style="text-align:center;">
0.80
</td>
<td style="text-align:center;">
1.15
</td>
<td style="text-align:center;">
-0.35
</td>
<td style="text-align:center;">
-0.55
</td>
<td style="text-align:center;">
0.20
</td>
<td style="text-align:center;">
-0.35
</td>
<td style="text-align:center;">
6
</td>
</tr>
<tr>
<td style="text-align:left;">
El Salvador
</td>
<td style="text-align:center;">
0.90
</td>
<td style="text-align:center;">
0.85
</td>
<td style="text-align:center;">
0.05
</td>
<td style="text-align:center;">
-0.45
</td>
<td style="text-align:center;">
-0.10
</td>
<td style="text-align:center;">
-0.55
</td>
<td style="text-align:center;">
5
</td>
</tr>
<tr>
<td style="text-align:left;">
Jamaica
</td>
<td style="text-align:center;">
1.05
</td>
<td style="text-align:center;">
0.60
</td>
<td style="text-align:center;">
0.45
</td>
<td style="text-align:center;">
-0.20
</td>
<td style="text-align:center;">
-0.55
</td>
<td style="text-align:center;">
-0.75
</td>
<td style="text-align:center;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
Honduras
</td>
<td style="text-align:center;">
0.90
</td>
<td style="text-align:center;">
0.75
</td>
<td style="text-align:center;">
0.15
</td>
<td style="text-align:center;">
-0.35
</td>
<td style="text-align:center;">
-0.70
</td>
<td style="text-align:center;">
-1.05
</td>
<td style="text-align:center;">
3
</td>
</tr>
</tbody>
</table>

Mexico has risen to the top and the top 4 teams by points have performed
the best relative to their schedules.

Here’s a big ugly table with all of the stats for all of the games, if
you’re interested:

<table class="table" style="margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
Date
</th>
<th style="text-align:left;">
Team
</th>
<th style="text-align:left;">
Opponent
</th>
<th style="text-align:left;">
Place
</th>
<th style="text-align:center;">
GF
</th>
<th style="text-align:center;">
GA
</th>
<th style="text-align:center;">
GD
</th>
<th style="text-align:center;">
Opp Avg GF
</th>
<th style="text-align:center;">
Opp Avg GA
</th>
<th style="text-align:center;">
Opp Avg GD
</th>
<th style="text-align:center;">
GF above Opp Avg
</th>
<th style="text-align:center;">
GA below Opp Avg
</th>
<th style="text-align:left;">
GD above Avg
</th>
<th style="text-align:left;">
Points
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
2021-09-02
</td>
<td style="text-align:left;">
Canada
</td>
<td style="text-align:left;">
Honduras
</td>
<td style="text-align:left;">
Home
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
0.25
</td>
<td style="text-align:center;">
1.75
</td>
<td style="text-align:center;">
-1.50
</td>
<td style="text-align:center;">
-0.75
</td>
<td style="text-align:center;">
-0.75
</td>
<td style="text-align:left;">
-1.50
</td>
<td style="text-align:left;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-05
</td>
<td style="text-align:left;">
Canada
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:left;">
Away
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
1.50
</td>
<td style="text-align:center;">
0.50
</td>
<td style="text-align:center;">
1.00
</td>
<td style="text-align:center;">
0.50
</td>
<td style="text-align:center;">
0.50
</td>
<td style="text-align:left;">
1.00
</td>
<td style="text-align:left;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-08
</td>
<td style="text-align:left;">
Canada
</td>
<td style="text-align:left;">
El Salvador
</td>
<td style="text-align:left;">
Home
</td>
<td style="text-align:center;">
3
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
3
</td>
<td style="text-align:center;">
0.50
</td>
<td style="text-align:center;">
0.50
</td>
<td style="text-align:center;">
0.00
</td>
<td style="text-align:center;">
2.50
</td>
<td style="text-align:center;">
0.50
</td>
<td style="text-align:left;">
3.00
</td>
<td style="text-align:left;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-10-07
</td>
<td style="text-align:left;">
Canada
</td>
<td style="text-align:left;">
Mexico
</td>
<td style="text-align:left;">
Away
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
1.75
</td>
<td style="text-align:center;">
0.50
</td>
<td style="text-align:center;">
1.25
</td>
<td style="text-align:center;">
0.50
</td>
<td style="text-align:center;">
0.75
</td>
<td style="text-align:left;">
1.25
</td>
<td style="text-align:left;">
1
</td>
</tr>
<tr>
<td style="text-align:left;border-bottom: 1px solid">
2021-10-10
</td>
<td style="text-align:left;border-bottom: 1px solid">
Canada
</td>
<td style="text-align:left;border-bottom: 1px solid">
Jamaica
</td>
<td style="text-align:left;border-bottom: 1px solid">
Away
</td>
<td style="text-align:center;border-bottom: 1px solid">
0
</td>
<td style="text-align:center;border-bottom: 1px solid">
0
</td>
<td style="text-align:center;border-bottom: 1px solid">
0
</td>
<td style="text-align:center;border-bottom: 1px solid">
0.50
</td>
<td style="text-align:center;border-bottom: 1px solid">
2.00
</td>
<td style="text-align:center;border-bottom: 1px solid">
-1.50
</td>
<td style="text-align:center;border-bottom: 1px solid">
-2.00
</td>
<td style="text-align:center;border-bottom: 1px solid">
0.50
</td>
<td style="text-align:left;border-bottom: 1px solid">
-1.50
</td>
<td style="text-align:left;border-bottom: 1px solid">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-02
</td>
<td style="text-align:left;">
Costa Rica
</td>
<td style="text-align:left;">
Panama
</td>
<td style="text-align:left;">
Away
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
1.25
</td>
<td style="text-align:center;">
0.50
</td>
<td style="text-align:center;">
0.75
</td>
<td style="text-align:center;">
-0.50
</td>
<td style="text-align:center;">
1.25
</td>
<td style="text-align:left;">
0.75
</td>
<td style="text-align:left;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-05
</td>
<td style="text-align:left;">
Costa Rica
</td>
<td style="text-align:left;">
Mexico
</td>
<td style="text-align:left;">
Home
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
-1
</td>
<td style="text-align:center;">
1.75
</td>
<td style="text-align:center;">
0.75
</td>
<td style="text-align:center;">
1.00
</td>
<td style="text-align:center;">
-0.75
</td>
<td style="text-align:center;">
0.75
</td>
<td style="text-align:left;">
0.00
</td>
<td style="text-align:left;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-08
</td>
<td style="text-align:left;">
Costa Rica
</td>
<td style="text-align:left;">
Jamaica
</td>
<td style="text-align:left;">
Home
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
0.25
</td>
<td style="text-align:center;">
1.75
</td>
<td style="text-align:center;">
-1.50
</td>
<td style="text-align:center;">
-0.75
</td>
<td style="text-align:center;">
-0.75
</td>
<td style="text-align:left;">
-1.50
</td>
<td style="text-align:left;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-10-07
</td>
<td style="text-align:left;">
Costa Rica
</td>
<td style="text-align:left;">
Honduras
</td>
<td style="text-align:left;">
Away
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
0.50
</td>
<td style="text-align:center;">
2.00
</td>
<td style="text-align:center;">
-1.50
</td>
<td style="text-align:center;">
-2.00
</td>
<td style="text-align:center;">
0.50
</td>
<td style="text-align:left;">
-1.50
</td>
<td style="text-align:left;">
1
</td>
</tr>
<tr>
<td style="text-align:left;border-bottom: 1px solid">
2021-10-10
</td>
<td style="text-align:left;border-bottom: 1px solid">
Costa Rica
</td>
<td style="text-align:left;border-bottom: 1px solid">
El Salvador
</td>
<td style="text-align:left;border-bottom: 1px solid">
Home
</td>
<td style="text-align:center;border-bottom: 1px solid">
2
</td>
<td style="text-align:center;border-bottom: 1px solid">
1
</td>
<td style="text-align:center;border-bottom: 1px solid">
1
</td>
<td style="text-align:center;border-bottom: 1px solid">
0.25
</td>
<td style="text-align:center;border-bottom: 1px solid">
0.75
</td>
<td style="text-align:center;border-bottom: 1px solid">
-0.50
</td>
<td style="text-align:center;border-bottom: 1px solid">
1.25
</td>
<td style="text-align:center;border-bottom: 1px solid">
-0.75
</td>
<td style="text-align:left;border-bottom: 1px solid">
0.50
</td>
<td style="text-align:left;border-bottom: 1px solid">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-02
</td>
<td style="text-align:left;">
El Salvador
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:left;">
Home
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
1.75
</td>
<td style="text-align:center;">
0.75
</td>
<td style="text-align:center;">
1.00
</td>
<td style="text-align:center;">
-0.75
</td>
<td style="text-align:center;">
1.75
</td>
<td style="text-align:left;">
1.00
</td>
<td style="text-align:left;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-05
</td>
<td style="text-align:left;">
El Salvador
</td>
<td style="text-align:left;">
Honduras
</td>
<td style="text-align:left;">
Home
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
0.50
</td>
<td style="text-align:center;">
2.00
</td>
<td style="text-align:center;">
-1.50
</td>
<td style="text-align:center;">
-2.00
</td>
<td style="text-align:center;">
0.50
</td>
<td style="text-align:left;">
-1.50
</td>
<td style="text-align:left;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-08
</td>
<td style="text-align:left;">
El Salvador
</td>
<td style="text-align:left;">
Canada
</td>
<td style="text-align:left;">
Away
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
3
</td>
<td style="text-align:center;">
-3
</td>
<td style="text-align:center;">
0.75
</td>
<td style="text-align:center;">
0.75
</td>
<td style="text-align:center;">
0.00
</td>
<td style="text-align:center;">
-0.75
</td>
<td style="text-align:center;">
-2.25
</td>
<td style="text-align:left;">
-3.00
</td>
<td style="text-align:left;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-10-07
</td>
<td style="text-align:left;">
El Salvador
</td>
<td style="text-align:left;">
Panama
</td>
<td style="text-align:left;">
Home
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
1.25
</td>
<td style="text-align:center;">
0.25
</td>
<td style="text-align:center;">
1.00
</td>
<td style="text-align:center;">
0.75
</td>
<td style="text-align:center;">
1.25
</td>
<td style="text-align:left;">
2.00
</td>
<td style="text-align:left;">
3
</td>
</tr>
<tr>
<td style="text-align:left;border-bottom: 1px solid">
2021-10-10
</td>
<td style="text-align:left;border-bottom: 1px solid">
El Salvador
</td>
<td style="text-align:left;border-bottom: 1px solid">
Costa Rica
</td>
<td style="text-align:left;border-bottom: 1px solid">
Away
</td>
<td style="text-align:center;border-bottom: 1px solid">
1
</td>
<td style="text-align:center;border-bottom: 1px solid">
2
</td>
<td style="text-align:center;border-bottom: 1px solid">
-1
</td>
<td style="text-align:center;border-bottom: 1px solid">
0.25
</td>
<td style="text-align:center;border-bottom: 1px solid">
0.50
</td>
<td style="text-align:center;border-bottom: 1px solid">
-0.25
</td>
<td style="text-align:center;border-bottom: 1px solid">
0.50
</td>
<td style="text-align:center;border-bottom: 1px solid">
-1.75
</td>
<td style="text-align:left;border-bottom: 1px solid">
-1.25
</td>
<td style="text-align:left;border-bottom: 1px solid">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-02
</td>
<td style="text-align:left;">
Honduras
</td>
<td style="text-align:left;">
Canada
</td>
<td style="text-align:left;">
Away
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
1.25
</td>
<td style="text-align:center;">
0.50
</td>
<td style="text-align:center;">
0.75
</td>
<td style="text-align:center;">
0.50
</td>
<td style="text-align:center;">
0.25
</td>
<td style="text-align:left;">
0.75
</td>
<td style="text-align:left;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-05
</td>
<td style="text-align:left;">
Honduras
</td>
<td style="text-align:left;">
El Salvador
</td>
<td style="text-align:left;">
Away
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
0.50
</td>
<td style="text-align:center;">
1.25
</td>
<td style="text-align:center;">
-0.75
</td>
<td style="text-align:center;">
-1.25
</td>
<td style="text-align:center;">
0.50
</td>
<td style="text-align:left;">
-0.75
</td>
<td style="text-align:left;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-08
</td>
<td style="text-align:left;">
Honduras
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:left;">
Home
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
4
</td>
<td style="text-align:center;">
-3
</td>
<td style="text-align:center;">
0.75
</td>
<td style="text-align:center;">
0.50
</td>
<td style="text-align:center;">
0.25
</td>
<td style="text-align:center;">
0.50
</td>
<td style="text-align:center;">
-3.25
</td>
<td style="text-align:left;">
-2.75
</td>
<td style="text-align:left;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-10-07
</td>
<td style="text-align:left;">
Honduras
</td>
<td style="text-align:left;">
Costa Rica
</td>
<td style="text-align:left;">
Home
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
0.75
</td>
<td style="text-align:center;">
0.75
</td>
<td style="text-align:center;">
0.00
</td>
<td style="text-align:center;">
-0.75
</td>
<td style="text-align:center;">
0.75
</td>
<td style="text-align:left;">
0.00
</td>
<td style="text-align:left;">
1
</td>
</tr>
<tr>
<td style="text-align:left;border-bottom: 1px solid">
2021-10-10
</td>
<td style="text-align:left;border-bottom: 1px solid">
Honduras
</td>
<td style="text-align:left;border-bottom: 1px solid">
Mexico
</td>
<td style="text-align:left;border-bottom: 1px solid">
Away
</td>
<td style="text-align:center;border-bottom: 1px solid">
0
</td>
<td style="text-align:center;border-bottom: 1px solid">
3
</td>
<td style="text-align:center;border-bottom: 1px solid">
-3
</td>
<td style="text-align:center;border-bottom: 1px solid">
1.25
</td>
<td style="text-align:center;border-bottom: 1px solid">
0.75
</td>
<td style="text-align:center;border-bottom: 1px solid">
0.50
</td>
<td style="text-align:center;border-bottom: 1px solid">
-0.75
</td>
<td style="text-align:center;border-bottom: 1px solid">
-1.75
</td>
<td style="text-align:left;border-bottom: 1px solid">
-2.50
</td>
<td style="text-align:left;border-bottom: 1px solid">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-02
</td>
<td style="text-align:left;">
Jamaica
</td>
<td style="text-align:left;">
Mexico
</td>
<td style="text-align:left;">
Away
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
2
</td>
<td style="text-align:center;">
-1
</td>
<td style="text-align:center;">
1.50
</td>
<td style="text-align:center;">
0.50
</td>
<td style="text-align:center;">
1.00
</td>
<td style="text-align:center;">
0.50
</td>
<td style="text-align:center;">
-0.50
</td>
<td style="text-align:left;">
0.00
</td>
<td style="text-align:left;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-05
</td>
<td style="text-align:left;">
Jamaica
</td>
<td style="text-align:left;">
Panama
</td>
<td style="text-align:left;">
Home
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
3
</td>
<td style="text-align:center;">
-3
</td>
<td style="text-align:center;">
0.50
</td>
<td style="text-align:center;">
0.50
</td>
<td style="text-align:center;">
0.00
</td>
<td style="text-align:center;">
-0.50
</td>
<td style="text-align:center;">
-2.50
</td>
<td style="text-align:left;">
-3.00
</td>
<td style="text-align:left;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-08
</td>
<td style="text-align:left;">
Jamaica
</td>
<td style="text-align:left;">
Costa Rica
</td>
<td style="text-align:left;">
Away
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
0.50
</td>
<td style="text-align:center;">
0.50
</td>
<td style="text-align:center;">
0.00
</td>
<td style="text-align:center;">
0.50
</td>
<td style="text-align:center;">
-0.50
</td>
<td style="text-align:left;">
0.00
</td>
<td style="text-align:left;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-10-07
</td>
<td style="text-align:left;">
Jamaica
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:left;">
Away
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
2
</td>
<td style="text-align:center;">
-2
</td>
<td style="text-align:center;">
1.25
</td>
<td style="text-align:center;">
0.75
</td>
<td style="text-align:center;">
0.50
</td>
<td style="text-align:center;">
-0.75
</td>
<td style="text-align:center;">
-0.75
</td>
<td style="text-align:left;">
-1.50
</td>
<td style="text-align:left;">
0
</td>
</tr>
<tr>
<td style="text-align:left;border-bottom: 1px solid">
2021-10-10
</td>
<td style="text-align:left;border-bottom: 1px solid">
Jamaica
</td>
<td style="text-align:left;border-bottom: 1px solid">
Canada
</td>
<td style="text-align:left;border-bottom: 1px solid">
Home
</td>
<td style="text-align:center;border-bottom: 1px solid">
0
</td>
<td style="text-align:center;border-bottom: 1px solid">
0
</td>
<td style="text-align:center;border-bottom: 1px solid">
0
</td>
<td style="text-align:center;border-bottom: 1px solid">
1.50
</td>
<td style="text-align:center;border-bottom: 1px solid">
0.75
</td>
<td style="text-align:center;border-bottom: 1px solid">
0.75
</td>
<td style="text-align:center;border-bottom: 1px solid">
-0.75
</td>
<td style="text-align:center;border-bottom: 1px solid">
1.50
</td>
<td style="text-align:left;border-bottom: 1px solid">
0.75
</td>
<td style="text-align:left;border-bottom: 1px solid">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-02
</td>
<td style="text-align:left;">
Mexico
</td>
<td style="text-align:left;">
Jamaica
</td>
<td style="text-align:left;">
Home
</td>
<td style="text-align:center;">
2
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
0.25
</td>
<td style="text-align:center;">
1.50
</td>
<td style="text-align:center;">
-1.25
</td>
<td style="text-align:center;">
0.50
</td>
<td style="text-align:center;">
-0.75
</td>
<td style="text-align:left;">
-0.25
</td>
<td style="text-align:left;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-05
</td>
<td style="text-align:left;">
Mexico
</td>
<td style="text-align:left;">
Costa Rica
</td>
<td style="text-align:left;">
Away
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
0.75
</td>
<td style="text-align:center;">
0.50
</td>
<td style="text-align:center;">
0.25
</td>
<td style="text-align:center;">
0.50
</td>
<td style="text-align:center;">
0.75
</td>
<td style="text-align:left;">
1.25
</td>
<td style="text-align:left;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-08
</td>
<td style="text-align:left;">
Mexico
</td>
<td style="text-align:left;">
Panama
</td>
<td style="text-align:left;">
Away
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
1.00
</td>
<td style="text-align:center;">
0.25
</td>
<td style="text-align:center;">
0.75
</td>
<td style="text-align:center;">
0.75
</td>
<td style="text-align:center;">
0.00
</td>
<td style="text-align:left;">
0.75
</td>
<td style="text-align:left;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-10-07
</td>
<td style="text-align:left;">
Mexico
</td>
<td style="text-align:left;">
Canada
</td>
<td style="text-align:left;">
Home
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
1.25
</td>
<td style="text-align:center;">
0.50
</td>
<td style="text-align:center;">
0.75
</td>
<td style="text-align:center;">
0.50
</td>
<td style="text-align:center;">
0.25
</td>
<td style="text-align:left;">
0.75
</td>
<td style="text-align:left;">
1
</td>
</tr>
<tr>
<td style="text-align:left;border-bottom: 1px solid">
2021-10-10
</td>
<td style="text-align:left;border-bottom: 1px solid">
Mexico
</td>
<td style="text-align:left;border-bottom: 1px solid">
Honduras
</td>
<td style="text-align:left;border-bottom: 1px solid">
Home
</td>
<td style="text-align:center;border-bottom: 1px solid">
3
</td>
<td style="text-align:center;border-bottom: 1px solid">
0
</td>
<td style="text-align:center;border-bottom: 1px solid">
3
</td>
<td style="text-align:center;border-bottom: 1px solid">
0.50
</td>
<td style="text-align:center;border-bottom: 1px solid">
1.25
</td>
<td style="text-align:center;border-bottom: 1px solid">
-0.75
</td>
<td style="text-align:center;border-bottom: 1px solid">
1.75
</td>
<td style="text-align:center;border-bottom: 1px solid">
0.50
</td>
<td style="text-align:left;border-bottom: 1px solid">
2.25
</td>
<td style="text-align:left;border-bottom: 1px solid">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-02
</td>
<td style="text-align:left;">
Panama
</td>
<td style="text-align:left;">
Costa Rica
</td>
<td style="text-align:left;">
Home
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
0.75
</td>
<td style="text-align:center;">
0.75
</td>
<td style="text-align:center;">
0.00
</td>
<td style="text-align:center;">
-0.75
</td>
<td style="text-align:center;">
0.75
</td>
<td style="text-align:left;">
0.00
</td>
<td style="text-align:left;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-05
</td>
<td style="text-align:left;">
Panama
</td>
<td style="text-align:left;">
Jamaica
</td>
<td style="text-align:left;">
Away
</td>
<td style="text-align:center;">
3
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
3
</td>
<td style="text-align:center;">
0.50
</td>
<td style="text-align:center;">
1.25
</td>
<td style="text-align:center;">
-0.75
</td>
<td style="text-align:center;">
1.75
</td>
<td style="text-align:center;">
0.50
</td>
<td style="text-align:left;">
2.25
</td>
<td style="text-align:left;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-08
</td>
<td style="text-align:left;">
Panama
</td>
<td style="text-align:left;">
Mexico
</td>
<td style="text-align:left;">
Home
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
1.75
</td>
<td style="text-align:center;">
0.50
</td>
<td style="text-align:center;">
1.25
</td>
<td style="text-align:center;">
0.50
</td>
<td style="text-align:center;">
0.75
</td>
<td style="text-align:left;">
1.25
</td>
<td style="text-align:left;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-10-07
</td>
<td style="text-align:left;">
Panama
</td>
<td style="text-align:left;">
El Salvador
</td>
<td style="text-align:left;">
Away
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
-1
</td>
<td style="text-align:center;">
0.25
</td>
<td style="text-align:center;">
1.25
</td>
<td style="text-align:center;">
-1.00
</td>
<td style="text-align:center;">
-1.25
</td>
<td style="text-align:center;">
-0.75
</td>
<td style="text-align:left;">
-2.00
</td>
<td style="text-align:left;">
0
</td>
</tr>
<tr>
<td style="text-align:left;border-bottom: 1px solid">
2021-10-10
</td>
<td style="text-align:left;border-bottom: 1px solid">
Panama
</td>
<td style="text-align:left;border-bottom: 1px solid">
United States
</td>
<td style="text-align:left;border-bottom: 1px solid">
Home
</td>
<td style="text-align:center;border-bottom: 1px solid">
1
</td>
<td style="text-align:center;border-bottom: 1px solid">
0
</td>
<td style="text-align:center;border-bottom: 1px solid">
1
</td>
<td style="text-align:center;border-bottom: 1px solid">
1.75
</td>
<td style="text-align:center;border-bottom: 1px solid">
0.50
</td>
<td style="text-align:center;border-bottom: 1px solid">
1.25
</td>
<td style="text-align:center;border-bottom: 1px solid">
0.50
</td>
<td style="text-align:center;border-bottom: 1px solid">
1.75
</td>
<td style="text-align:left;border-bottom: 1px solid">
2.25
</td>
<td style="text-align:left;border-bottom: 1px solid">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-02
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:left;">
El Salvador
</td>
<td style="text-align:left;">
Away
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
0.50
</td>
<td style="text-align:center;">
1.25
</td>
<td style="text-align:center;">
-0.75
</td>
<td style="text-align:center;">
-1.25
</td>
<td style="text-align:center;">
0.50
</td>
<td style="text-align:left;">
-0.75
</td>
<td style="text-align:left;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-05
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:left;">
Canada
</td>
<td style="text-align:left;">
Home
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
1.25
</td>
<td style="text-align:center;">
0.50
</td>
<td style="text-align:center;">
0.75
</td>
<td style="text-align:center;">
0.50
</td>
<td style="text-align:center;">
0.25
</td>
<td style="text-align:left;">
0.75
</td>
<td style="text-align:left;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-09-08
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:left;">
Honduras
</td>
<td style="text-align:left;">
Away
</td>
<td style="text-align:center;">
4
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
3
</td>
<td style="text-align:center;">
0.25
</td>
<td style="text-align:center;">
1.00
</td>
<td style="text-align:center;">
-0.75
</td>
<td style="text-align:center;">
3.00
</td>
<td style="text-align:center;">
-0.75
</td>
<td style="text-align:left;">
2.25
</td>
<td style="text-align:left;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-10-07
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:left;">
Jamaica
</td>
<td style="text-align:left;">
Home
</td>
<td style="text-align:center;">
2
</td>
<td style="text-align:center;">
0
</td>
<td style="text-align:center;">
2
</td>
<td style="text-align:center;">
0.50
</td>
<td style="text-align:center;">
1.50
</td>
<td style="text-align:center;">
-1.00
</td>
<td style="text-align:center;">
0.50
</td>
<td style="text-align:center;">
0.50
</td>
<td style="text-align:left;">
1.00
</td>
<td style="text-align:left;">
3
</td>
</tr>
<tr>
<td style="text-align:left;border-bottom: 1px solid">
2021-10-10
</td>
<td style="text-align:left;border-bottom: 1px solid">
United States
</td>
<td style="text-align:left;border-bottom: 1px solid">
Panama
</td>
<td style="text-align:left;border-bottom: 1px solid">
Away
</td>
<td style="text-align:center;border-bottom: 1px solid">
0
</td>
<td style="text-align:center;border-bottom: 1px solid">
1
</td>
<td style="text-align:center;border-bottom: 1px solid">
-1
</td>
<td style="text-align:center;border-bottom: 1px solid">
1.00
</td>
<td style="text-align:center;border-bottom: 1px solid">
0.50
</td>
<td style="text-align:center;border-bottom: 1px solid">
0.50
</td>
<td style="text-align:center;border-bottom: 1px solid">
-0.50
</td>
<td style="text-align:center;border-bottom: 1px solid">
0.00
</td>
<td style="text-align:left;border-bottom: 1px solid">
-0.50
</td>
<td style="text-align:left;border-bottom: 1px solid">
0
</td>
</tr>
</tbody>
</table>

I’ll try to make these all sortable in the future.

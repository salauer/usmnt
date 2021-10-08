## USMNT Octagon

CONCACAF has entered the Octagon, and I wanted to see which teams have
had the hardest/easiest schedules so far and who has performed best
relative to expectations. What follows is super basic (you can find my
exploratory analysis code in `inst/octagon.R`).

### Who Played Whom and Results

With 8 teams each playing 4 games so far, it’s hard to understand
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
<th style="text-align:right;">
GF
</th>
<th style="text-align:right;">
GA
</th>
<th style="text-align:right;">
GD
</th>
<th style="text-align:right;">
Points
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
9/8
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
<td style="text-align:right;">
3
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
3
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
9/2
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
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
10/7
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
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;border-bottom: 1px solid">
9/5
</td>
<td style="text-align:left;border-bottom: 1px solid">
Canada
</td>
<td style="text-align:left;border-bottom: 1px solid">
United States
</td>
<td style="text-align:left;border-bottom: 1px solid">
Away
</td>
<td style="text-align:right;border-bottom: 1px solid">
1
</td>
<td style="text-align:right;border-bottom: 1px solid">
1
</td>
<td style="text-align:right;border-bottom: 1px solid">
0
</td>
<td style="text-align:right;border-bottom: 1px solid">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
10/7
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
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
9/8
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
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
9/5
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
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
-1
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;border-bottom: 1px solid">
9/2
</td>
<td style="text-align:left;border-bottom: 1px solid">
Costa Rica
</td>
<td style="text-align:left;border-bottom: 1px solid">
Panama
</td>
<td style="text-align:left;border-bottom: 1px solid">
Away
</td>
<td style="text-align:right;border-bottom: 1px solid">
0
</td>
<td style="text-align:right;border-bottom: 1px solid">
0
</td>
<td style="text-align:right;border-bottom: 1px solid">
0
</td>
<td style="text-align:right;border-bottom: 1px solid">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
9/8
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
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
3
</td>
<td style="text-align:right;">
-3
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
9/5
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
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
10/7
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
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;border-bottom: 1px solid">
9/2
</td>
<td style="text-align:left;border-bottom: 1px solid">
El Salvador
</td>
<td style="text-align:left;border-bottom: 1px solid">
United States
</td>
<td style="text-align:left;border-bottom: 1px solid">
Home
</td>
<td style="text-align:right;border-bottom: 1px solid">
0
</td>
<td style="text-align:right;border-bottom: 1px solid">
0
</td>
<td style="text-align:right;border-bottom: 1px solid">
0
</td>
<td style="text-align:right;border-bottom: 1px solid">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
9/2
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
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
10/7
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
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
9/5
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
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;border-bottom: 1px solid">
9/8
</td>
<td style="text-align:left;border-bottom: 1px solid">
Honduras
</td>
<td style="text-align:left;border-bottom: 1px solid">
United States
</td>
<td style="text-align:left;border-bottom: 1px solid">
Home
</td>
<td style="text-align:right;border-bottom: 1px solid">
1
</td>
<td style="text-align:right;border-bottom: 1px solid">
4
</td>
<td style="text-align:right;border-bottom: 1px solid">
-3
</td>
<td style="text-align:right;border-bottom: 1px solid">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
9/8
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
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
9/2
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
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2
</td>
<td style="text-align:right;">
-1
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
9/5
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
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
3
</td>
<td style="text-align:right;">
-3
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;border-bottom: 1px solid">
10/7
</td>
<td style="text-align:left;border-bottom: 1px solid">
Jamaica
</td>
<td style="text-align:left;border-bottom: 1px solid">
United States
</td>
<td style="text-align:left;border-bottom: 1px solid">
Away
</td>
<td style="text-align:right;border-bottom: 1px solid">
0
</td>
<td style="text-align:right;border-bottom: 1px solid">
2
</td>
<td style="text-align:right;border-bottom: 1px solid">
-2
</td>
<td style="text-align:right;border-bottom: 1px solid">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
10/7
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
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
9/5
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
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
9/2
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
<td style="text-align:right;">
2
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;border-bottom: 1px solid">
9/8
</td>
<td style="text-align:left;border-bottom: 1px solid">
Mexico
</td>
<td style="text-align:left;border-bottom: 1px solid">
Panama
</td>
<td style="text-align:left;border-bottom: 1px solid">
Away
</td>
<td style="text-align:right;border-bottom: 1px solid">
1
</td>
<td style="text-align:right;border-bottom: 1px solid">
1
</td>
<td style="text-align:right;border-bottom: 1px solid">
0
</td>
<td style="text-align:right;border-bottom: 1px solid">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
9/2
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
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
10/7
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
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
-1
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
9/5
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
<td style="text-align:right;">
3
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
3
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;border-bottom: 1px solid">
9/8
</td>
<td style="text-align:left;border-bottom: 1px solid">
Panama
</td>
<td style="text-align:left;border-bottom: 1px solid">
Mexico
</td>
<td style="text-align:left;border-bottom: 1px solid">
Home
</td>
<td style="text-align:right;border-bottom: 1px solid">
1
</td>
<td style="text-align:right;border-bottom: 1px solid">
1
</td>
<td style="text-align:right;border-bottom: 1px solid">
0
</td>
<td style="text-align:right;border-bottom: 1px solid">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
9/5
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
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
9/2
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
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
9/8
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
<td style="text-align:right;">
4
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;border-bottom: 1px solid">
10/7
</td>
<td style="text-align:left;border-bottom: 1px solid">
United States
</td>
<td style="text-align:left;border-bottom: 1px solid">
Jamaica
</td>
<td style="text-align:left;border-bottom: 1px solid">
Home
</td>
<td style="text-align:right;border-bottom: 1px solid">
2
</td>
<td style="text-align:right;border-bottom: 1px solid">
0
</td>
<td style="text-align:right;border-bottom: 1px solid">
2
</td>
<td style="text-align:right;border-bottom: 1px solid">
3
</td>
</tr>
</tbody>
</table>

I sorted it by `Team` then `Opponent` to more easily find who played
whom, though may change to sorting by `Date` in the future.

## Kinda Advanced Stats

To figure out who has played the hardest slate so far, I look at how a
team’s opponents fared in their other games and how the team then
performed relative to that. Here you can see each team and their
opponents average goals for and against in other games:

    ## `summarise()` ungrouping output (override with `.groups` argument)

<table class="table" style="margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
Team
</th>
<th style="text-align:right;">
Opp Avg GF
</th>
<th style="text-align:right;">
Opp Avg GA
</th>
<th style="text-align:right;">
Opp Avg GD
</th>
<th style="text-align:right;">
Points
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Canada
</td>
<td style="text-align:right;">
1.00
</td>
<td style="text-align:right;">
0.58
</td>
<td style="text-align:right;">
0.42
</td>
<td style="text-align:right;">
6
</td>
</tr>
<tr>
<td style="text-align:left;">
El Salvador
</td>
<td style="text-align:right;">
1.33
</td>
<td style="text-align:right;">
0.92
</td>
<td style="text-align:right;">
0.42
</td>
<td style="text-align:right;">
5
</td>
</tr>
<tr>
<td style="text-align:left;">
Honduras
</td>
<td style="text-align:right;">
0.83
</td>
<td style="text-align:right;">
0.67
</td>
<td style="text-align:right;">
0.17
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
Jamaica
</td>
<td style="text-align:right;">
0.75
</td>
<td style="text-align:right;">
0.58
</td>
<td style="text-align:right;">
0.17
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
Mexico
</td>
<td style="text-align:right;">
0.83
</td>
<td style="text-align:right;">
0.83
</td>
<td style="text-align:right;">
0.00
</td>
<td style="text-align:right;">
8
</td>
</tr>
<tr>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
0.75
</td>
<td style="text-align:right;">
1.00
</td>
<td style="text-align:right;">
-0.25
</td>
<td style="text-align:right;">
8
</td>
</tr>
<tr>
<td style="text-align:left;">
Panama
</td>
<td style="text-align:right;">
0.58
</td>
<td style="text-align:right;">
1.00
</td>
<td style="text-align:right;">
-0.42
</td>
<td style="text-align:right;">
5
</td>
</tr>
<tr>
<td style="text-align:left;">
Costa Rica
</td>
<td style="text-align:right;">
0.92
</td>
<td style="text-align:right;">
1.42
</td>
<td style="text-align:right;">
-0.50
</td>
<td style="text-align:right;">
3
</td>
</tr>
</tbody>
</table>

Canada and El Salvador have excelled against the hardest schedules so
far, while Costa Rica has struggled with the easiest. Here’s the same
table, but with the team’s GF above opponent’s average and GA below
opponent’s average to get a better sense of relative performance:

    ## `summarise()` ungrouping output (override with `.groups` argument)

<table class="table" style="margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
Team
</th>
<th style="text-align:right;">
Opp Avg GF
</th>
<th style="text-align:right;">
Opp Avg GA
</th>
<th style="text-align:right;">
Opp Avg GD
</th>
<th style="text-align:right;">
GF above Opp Avg
</th>
<th style="text-align:right;">
GA below Opp Avg
</th>
<th style="text-align:right;">
GD above Avg
</th>
<th style="text-align:right;">
Points
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Canada
</td>
<td style="text-align:right;">
1.00
</td>
<td style="text-align:right;">
0.58
</td>
<td style="text-align:right;">
0.42
</td>
<td style="text-align:right;">
0.92
</td>
<td style="text-align:right;">
0.25
</td>
<td style="text-align:right;">
1.17
</td>
<td style="text-align:right;">
6
</td>
</tr>
<tr>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
0.75
</td>
<td style="text-align:right;">
1.00
</td>
<td style="text-align:right;">
-0.25
</td>
<td style="text-align:right;">
0.75
</td>
<td style="text-align:right;">
0.25
</td>
<td style="text-align:right;">
1.00
</td>
<td style="text-align:right;">
8
</td>
</tr>
<tr>
<td style="text-align:left;">
Mexico
</td>
<td style="text-align:right;">
0.83
</td>
<td style="text-align:right;">
0.83
</td>
<td style="text-align:right;">
0.00
</td>
<td style="text-align:right;">
0.42
</td>
<td style="text-align:right;">
0.08
</td>
<td style="text-align:right;">
0.50
</td>
<td style="text-align:right;">
8
</td>
</tr>
<tr>
<td style="text-align:left;">
Panama
</td>
<td style="text-align:right;">
0.58
</td>
<td style="text-align:right;">
1.00
</td>
<td style="text-align:right;">
-0.42
</td>
<td style="text-align:right;">
0.00
</td>
<td style="text-align:right;">
0.08
</td>
<td style="text-align:right;">
0.08
</td>
<td style="text-align:right;">
5
</td>
</tr>
<tr>
<td style="text-align:left;">
El Salvador
</td>
<td style="text-align:right;">
1.33
</td>
<td style="text-align:right;">
0.92
</td>
<td style="text-align:right;">
0.42
</td>
<td style="text-align:right;">
-0.67
</td>
<td style="text-align:right;">
0.58
</td>
<td style="text-align:right;">
-0.08
</td>
<td style="text-align:right;">
5
</td>
</tr>
<tr>
<td style="text-align:left;">
Honduras
</td>
<td style="text-align:right;">
0.83
</td>
<td style="text-align:right;">
0.67
</td>
<td style="text-align:right;">
0.17
</td>
<td style="text-align:right;">
-0.17
</td>
<td style="text-align:right;">
-0.42
</td>
<td style="text-align:right;">
-0.58
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
Costa Rica
</td>
<td style="text-align:right;">
0.92
</td>
<td style="text-align:right;">
1.42
</td>
<td style="text-align:right;">
-0.50
</td>
<td style="text-align:right;">
-1.17
</td>
<td style="text-align:right;">
0.42
</td>
<td style="text-align:right;">
-0.75
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
Jamaica
</td>
<td style="text-align:right;">
0.75
</td>
<td style="text-align:right;">
0.58
</td>
<td style="text-align:right;">
0.17
</td>
<td style="text-align:right;">
-0.08
</td>
<td style="text-align:right;">
-1.25
</td>
<td style="text-align:right;">
-1.33
</td>
<td style="text-align:right;">
1
</td>
</tr>
</tbody>
</table>

The US, Panama, and Mexico have played weaker schedules, but they’ve
still outperformed expectations from those games. Canada looks really
good going into the lighter part of their schedule.

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
<th style="text-align:right;">
GF
</th>
<th style="text-align:right;">
GA
</th>
<th style="text-align:right;">
GD
</th>
<th style="text-align:right;">
Opp Avg GF
</th>
<th style="text-align:right;">
Opp Avg GA
</th>
<th style="text-align:right;">
Opp Avg GD
</th>
<th style="text-align:right;">
GF above Opp Avg
</th>
<th style="text-align:right;">
GA below Opp Avg
</th>
<th style="text-align:right;">
GD above Avg
</th>
<th style="text-align:right;">
Points
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
9/8
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
<td style="text-align:right;">
3
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
3
</td>
<td style="text-align:right;">
0.33
</td>
<td style="text-align:right;">
0.00
</td>
<td style="text-align:right;">
0.33
</td>
<td style="text-align:right;">
3.00
</td>
<td style="text-align:right;">
0.33
</td>
<td style="text-align:right;">
3.33
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
9/2
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
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0.33
</td>
<td style="text-align:right;">
1.33
</td>
<td style="text-align:right;">
-1.00
</td>
<td style="text-align:right;">
-0.33
</td>
<td style="text-align:right;">
-0.67
</td>
<td style="text-align:right;">
-1.00
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
10/7
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
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
1.33
</td>
<td style="text-align:right;">
0.67
</td>
<td style="text-align:right;">
0.67
</td>
<td style="text-align:right;">
0.33
</td>
<td style="text-align:right;">
0.33
</td>
<td style="text-align:right;">
0.67
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;border-bottom: 1px solid">
9/5
</td>
<td style="text-align:left;border-bottom: 1px solid">
Canada
</td>
<td style="text-align:left;border-bottom: 1px solid">
United States
</td>
<td style="text-align:left;border-bottom: 1px solid">
Away
</td>
<td style="text-align:right;border-bottom: 1px solid">
1
</td>
<td style="text-align:right;border-bottom: 1px solid">
1
</td>
<td style="text-align:right;border-bottom: 1px solid">
0
</td>
<td style="text-align:right;border-bottom: 1px solid">
2.00
</td>
<td style="text-align:right;border-bottom: 1px solid">
0.33
</td>
<td style="text-align:right;border-bottom: 1px solid">
1.67
</td>
<td style="text-align:right;border-bottom: 1px solid">
0.67
</td>
<td style="text-align:right;border-bottom: 1px solid">
1.00
</td>
<td style="text-align:right;border-bottom: 1px solid">
1.67
</td>
<td style="text-align:right;border-bottom: 1px solid">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
10/7
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
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0.67
</td>
<td style="text-align:right;">
1.67
</td>
<td style="text-align:right;">
-1.00
</td>
<td style="text-align:right;">
-1.67
</td>
<td style="text-align:right;">
0.67
</td>
<td style="text-align:right;">
-1.00
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
9/8
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
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0.33
</td>
<td style="text-align:right;">
2.33
</td>
<td style="text-align:right;">
-2.00
</td>
<td style="text-align:right;">
-1.33
</td>
<td style="text-align:right;">
-0.67
</td>
<td style="text-align:right;">
-2.00
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
9/5
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
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
-1
</td>
<td style="text-align:right;">
1.33
</td>
<td style="text-align:right;">
1.00
</td>
<td style="text-align:right;">
0.33
</td>
<td style="text-align:right;">
-1.00
</td>
<td style="text-align:right;">
0.33
</td>
<td style="text-align:right;">
-0.67
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;border-bottom: 1px solid">
9/2
</td>
<td style="text-align:left;border-bottom: 1px solid">
Costa Rica
</td>
<td style="text-align:left;border-bottom: 1px solid">
Panama
</td>
<td style="text-align:left;border-bottom: 1px solid">
Away
</td>
<td style="text-align:right;border-bottom: 1px solid">
0
</td>
<td style="text-align:right;border-bottom: 1px solid">
0
</td>
<td style="text-align:right;border-bottom: 1px solid">
0
</td>
<td style="text-align:right;border-bottom: 1px solid">
1.33
</td>
<td style="text-align:right;border-bottom: 1px solid">
0.67
</td>
<td style="text-align:right;border-bottom: 1px solid">
0.67
</td>
<td style="text-align:right;border-bottom: 1px solid">
-0.67
</td>
<td style="text-align:right;border-bottom: 1px solid">
1.33
</td>
<td style="text-align:right;border-bottom: 1px solid">
0.67
</td>
<td style="text-align:right;border-bottom: 1px solid">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
9/8
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
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
3
</td>
<td style="text-align:right;">
-3
</td>
<td style="text-align:right;">
1.00
</td>
<td style="text-align:right;">
1.00
</td>
<td style="text-align:right;">
0.00
</td>
<td style="text-align:right;">
-1.00
</td>
<td style="text-align:right;">
-2.00
</td>
<td style="text-align:right;">
-3.00
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
9/5
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
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0.67
</td>
<td style="text-align:right;">
1.67
</td>
<td style="text-align:right;">
-1.00
</td>
<td style="text-align:right;">
-1.67
</td>
<td style="text-align:right;">
0.67
</td>
<td style="text-align:right;">
-1.00
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
10/7
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
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1.33
</td>
<td style="text-align:right;">
0.33
</td>
<td style="text-align:right;">
1.00
</td>
<td style="text-align:right;">
0.67
</td>
<td style="text-align:right;">
1.33
</td>
<td style="text-align:right;">
2.00
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;border-bottom: 1px solid">
9/2
</td>
<td style="text-align:left;border-bottom: 1px solid">
El Salvador
</td>
<td style="text-align:left;border-bottom: 1px solid">
United States
</td>
<td style="text-align:left;border-bottom: 1px solid">
Home
</td>
<td style="text-align:right;border-bottom: 1px solid">
0
</td>
<td style="text-align:right;border-bottom: 1px solid">
0
</td>
<td style="text-align:right;border-bottom: 1px solid">
0
</td>
<td style="text-align:right;border-bottom: 1px solid">
2.33
</td>
<td style="text-align:right;border-bottom: 1px solid">
0.67
</td>
<td style="text-align:right;border-bottom: 1px solid">
1.67
</td>
<td style="text-align:right;border-bottom: 1px solid">
-0.67
</td>
<td style="text-align:right;border-bottom: 1px solid">
2.33
</td>
<td style="text-align:right;border-bottom: 1px solid">
1.67
</td>
<td style="text-align:right;border-bottom: 1px solid">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
9/2
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
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
1.67
</td>
<td style="text-align:right;">
0.67
</td>
<td style="text-align:right;">
1.00
</td>
<td style="text-align:right;">
0.33
</td>
<td style="text-align:right;">
0.67
</td>
<td style="text-align:right;">
1.00
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
10/7
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
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0.33
</td>
<td style="text-align:right;">
0.67
</td>
<td style="text-align:right;">
-0.33
</td>
<td style="text-align:right;">
-0.67
</td>
<td style="text-align:right;">
0.33
</td>
<td style="text-align:right;">
-0.33
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
9/5
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
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0.33
</td>
<td style="text-align:right;">
1.00
</td>
<td style="text-align:right;">
-0.67
</td>
<td style="text-align:right;">
-1.00
</td>
<td style="text-align:right;">
0.33
</td>
<td style="text-align:right;">
-0.67
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;border-bottom: 1px solid">
9/8
</td>
<td style="text-align:left;border-bottom: 1px solid">
Honduras
</td>
<td style="text-align:left;border-bottom: 1px solid">
United States
</td>
<td style="text-align:left;border-bottom: 1px solid">
Home
</td>
<td style="text-align:right;border-bottom: 1px solid">
1
</td>
<td style="text-align:right;border-bottom: 1px solid">
4
</td>
<td style="text-align:right;border-bottom: 1px solid">
-3
</td>
<td style="text-align:right;border-bottom: 1px solid">
1.00
</td>
<td style="text-align:right;border-bottom: 1px solid">
0.33
</td>
<td style="text-align:right;border-bottom: 1px solid">
0.67
</td>
<td style="text-align:right;border-bottom: 1px solid">
0.67
</td>
<td style="text-align:right;border-bottom: 1px solid">
-3.00
</td>
<td style="text-align:right;border-bottom: 1px solid">
-2.33
</td>
<td style="text-align:right;border-bottom: 1px solid">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
9/8
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
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0.00
</td>
<td style="text-align:right;">
0.33
</td>
<td style="text-align:right;">
-0.33
</td>
<td style="text-align:right;">
0.67
</td>
<td style="text-align:right;">
-1.00
</td>
<td style="text-align:right;">
-0.33
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
9/2
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
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2
</td>
<td style="text-align:right;">
-1
</td>
<td style="text-align:right;">
1.00
</td>
<td style="text-align:right;">
0.67
</td>
<td style="text-align:right;">
0.33
</td>
<td style="text-align:right;">
0.33
</td>
<td style="text-align:right;">
-1.00
</td>
<td style="text-align:right;">
-0.67
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
9/5
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
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
3
</td>
<td style="text-align:right;">
-3
</td>
<td style="text-align:right;">
0.33
</td>
<td style="text-align:right;">
0.67
</td>
<td style="text-align:right;">
-0.33
</td>
<td style="text-align:right;">
-0.67
</td>
<td style="text-align:right;">
-2.67
</td>
<td style="text-align:right;">
-3.33
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;border-bottom: 1px solid">
10/7
</td>
<td style="text-align:left;border-bottom: 1px solid">
Jamaica
</td>
<td style="text-align:left;border-bottom: 1px solid">
United States
</td>
<td style="text-align:left;border-bottom: 1px solid">
Away
</td>
<td style="text-align:right;border-bottom: 1px solid">
0
</td>
<td style="text-align:right;border-bottom: 1px solid">
2
</td>
<td style="text-align:right;border-bottom: 1px solid">
-2
</td>
<td style="text-align:right;border-bottom: 1px solid">
1.67
</td>
<td style="text-align:right;border-bottom: 1px solid">
0.67
</td>
<td style="text-align:right;border-bottom: 1px solid">
1.00
</td>
<td style="text-align:right;border-bottom: 1px solid">
-0.67
</td>
<td style="text-align:right;border-bottom: 1px solid">
-0.33
</td>
<td style="text-align:right;border-bottom: 1px solid">
-1.00
</td>
<td style="text-align:right;border-bottom: 1px solid">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
10/7
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
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
1.67
</td>
<td style="text-align:right;">
0.67
</td>
<td style="text-align:right;">
1.00
</td>
<td style="text-align:right;">
0.33
</td>
<td style="text-align:right;">
0.67
</td>
<td style="text-align:right;">
1.00
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
9/5
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
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0.33
</td>
<td style="text-align:right;">
0.33
</td>
<td style="text-align:right;">
0.00
</td>
<td style="text-align:right;">
0.67
</td>
<td style="text-align:right;">
0.33
</td>
<td style="text-align:right;">
1.00
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
9/2
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
<td style="text-align:right;">
2
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0.33
</td>
<td style="text-align:right;">
2.00
</td>
<td style="text-align:right;">
-1.67
</td>
<td style="text-align:right;">
0.00
</td>
<td style="text-align:right;">
-0.67
</td>
<td style="text-align:right;">
-0.67
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;border-bottom: 1px solid">
9/8
</td>
<td style="text-align:left;border-bottom: 1px solid">
Mexico
</td>
<td style="text-align:left;border-bottom: 1px solid">
Panama
</td>
<td style="text-align:left;border-bottom: 1px solid">
Away
</td>
<td style="text-align:right;border-bottom: 1px solid">
1
</td>
<td style="text-align:right;border-bottom: 1px solid">
1
</td>
<td style="text-align:right;border-bottom: 1px solid">
0
</td>
<td style="text-align:right;border-bottom: 1px solid">
1.00
</td>
<td style="text-align:right;border-bottom: 1px solid">
0.33
</td>
<td style="text-align:right;border-bottom: 1px solid">
0.67
</td>
<td style="text-align:right;border-bottom: 1px solid">
0.67
</td>
<td style="text-align:right;border-bottom: 1px solid">
0.00
</td>
<td style="text-align:right;border-bottom: 1px solid">
0.67
</td>
<td style="text-align:right;border-bottom: 1px solid">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
9/2
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
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0.33
</td>
<td style="text-align:right;">
0.67
</td>
<td style="text-align:right;">
-0.33
</td>
<td style="text-align:right;">
-0.67
</td>
<td style="text-align:right;">
0.33
</td>
<td style="text-align:right;">
-0.33
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
10/7
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
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
-1
</td>
<td style="text-align:right;">
0.00
</td>
<td style="text-align:right;">
1.00
</td>
<td style="text-align:right;">
-1.00
</td>
<td style="text-align:right;">
-1.00
</td>
<td style="text-align:right;">
-1.00
</td>
<td style="text-align:right;">
-2.00
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
9/5
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
<td style="text-align:right;">
3
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
3
</td>
<td style="text-align:right;">
0.67
</td>
<td style="text-align:right;">
1.67
</td>
<td style="text-align:right;">
-1.00
</td>
<td style="text-align:right;">
1.33
</td>
<td style="text-align:right;">
0.67
</td>
<td style="text-align:right;">
2.00
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;border-bottom: 1px solid">
9/8
</td>
<td style="text-align:left;border-bottom: 1px solid">
Panama
</td>
<td style="text-align:left;border-bottom: 1px solid">
Mexico
</td>
<td style="text-align:left;border-bottom: 1px solid">
Home
</td>
<td style="text-align:right;border-bottom: 1px solid">
1
</td>
<td style="text-align:right;border-bottom: 1px solid">
1
</td>
<td style="text-align:right;border-bottom: 1px solid">
0
</td>
<td style="text-align:right;border-bottom: 1px solid">
1.33
</td>
<td style="text-align:right;border-bottom: 1px solid">
0.67
</td>
<td style="text-align:right;border-bottom: 1px solid">
0.67
</td>
<td style="text-align:right;border-bottom: 1px solid">
0.33
</td>
<td style="text-align:right;border-bottom: 1px solid">
0.33
</td>
<td style="text-align:right;border-bottom: 1px solid">
0.67
</td>
<td style="text-align:right;border-bottom: 1px solid">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
9/5
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
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
1.67
</td>
<td style="text-align:right;">
0.67
</td>
<td style="text-align:right;">
1.00
</td>
<td style="text-align:right;">
0.33
</td>
<td style="text-align:right;">
0.67
</td>
<td style="text-align:right;">
1.00
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
9/2
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
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0.33
</td>
<td style="text-align:right;">
1.00
</td>
<td style="text-align:right;">
-0.67
</td>
<td style="text-align:right;">
-1.00
</td>
<td style="text-align:right;">
0.33
</td>
<td style="text-align:right;">
-0.67
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
9/8
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
<td style="text-align:right;">
4
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3
</td>
<td style="text-align:right;">
0.33
</td>
<td style="text-align:right;">
0.33
</td>
<td style="text-align:right;">
0.00
</td>
<td style="text-align:right;">
3.67
</td>
<td style="text-align:right;">
-0.67
</td>
<td style="text-align:right;">
3.00
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;border-bottom: 1px solid">
10/7
</td>
<td style="text-align:left;border-bottom: 1px solid">
United States
</td>
<td style="text-align:left;border-bottom: 1px solid">
Jamaica
</td>
<td style="text-align:left;border-bottom: 1px solid">
Home
</td>
<td style="text-align:right;border-bottom: 1px solid">
2
</td>
<td style="text-align:right;border-bottom: 1px solid">
0
</td>
<td style="text-align:right;border-bottom: 1px solid">
2
</td>
<td style="text-align:right;border-bottom: 1px solid">
0.67
</td>
<td style="text-align:right;border-bottom: 1px solid">
2.00
</td>
<td style="text-align:right;border-bottom: 1px solid">
-1.33
</td>
<td style="text-align:right;border-bottom: 1px solid">
0.00
</td>
<td style="text-align:right;border-bottom: 1px solid">
0.67
</td>
<td style="text-align:right;border-bottom: 1px solid">
0.67
</td>
<td style="text-align:right;border-bottom: 1px solid">
3
</td>
</tr>
</tbody>
</table>

I’ll try to make these all sortable in the future.

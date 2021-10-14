## USMNT Octagon

CONCACAF has entered the Octagon, and I wanted to see which teams have
had the hardest/easiest schedules so far and who has performed best
relative to expectations. What follows is super basic (you can find my
exploratory analysis code in `inst/octagon.R`). **I would love to do
this analysis on xG instead of observed goals, please let me know if you
have that data for all the games!**

-   [Who Played Whom and Results](#who-played-whom-and-results)
-   [Strength of Schedule](#strength-of-schedule)
-   [Real Basic Result-Only Rankings](#real-basic-result-only-rankings)
-   [Big Ugly Table](#big-ugly-table)

### Who Played Whom and Results

With 8 teams each playing 6 games so far, it’s hard to understand
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
<td style="text-align:left;">
2021-10-10
</td>
<td style="text-align:left;">
Canada
</td>
<td style="text-align:left;">
Jamaica
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
2021-10-13
</td>
<td style="text-align:left;border-bottom: 1px solid">
Canada
</td>
<td style="text-align:left;border-bottom: 1px solid">
Panama
</td>
<td style="text-align:left;border-bottom: 1px solid">
Home
</td>
<td style="text-align:center;border-bottom: 1px solid">
4
</td>
<td style="text-align:center;border-bottom: 1px solid">
1
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
<td style="text-align:left;">
2021-10-10
</td>
<td style="text-align:left;">
Costa Rica
</td>
<td style="text-align:left;">
El Salvador
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
<td style="text-align:left;border-bottom: 1px solid">
2021-10-13
</td>
<td style="text-align:left;border-bottom: 1px solid">
Costa Rica
</td>
<td style="text-align:left;border-bottom: 1px solid">
United States
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
<td style="text-align:left;">
2021-10-10
</td>
<td style="text-align:left;">
El Salvador
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
<td style="text-align:left;border-bottom: 1px solid">
2021-10-13
</td>
<td style="text-align:left;border-bottom: 1px solid">
El Salvador
</td>
<td style="text-align:left;border-bottom: 1px solid">
Mexico
</td>
<td style="text-align:left;border-bottom: 1px solid">
Home
</td>
<td style="text-align:center;border-bottom: 1px solid">
0
</td>
<td style="text-align:center;border-bottom: 1px solid">
2
</td>
<td style="text-align:center;border-bottom: 1px solid">
-2
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
<td style="text-align:left;">
2021-10-10
</td>
<td style="text-align:left;">
Honduras
</td>
<td style="text-align:left;">
Mexico
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
<td style="text-align:left;border-bottom: 1px solid">
2021-10-13
</td>
<td style="text-align:left;border-bottom: 1px solid">
Honduras
</td>
<td style="text-align:left;border-bottom: 1px solid">
Jamaica
</td>
<td style="text-align:left;border-bottom: 1px solid">
Home
</td>
<td style="text-align:center;border-bottom: 1px solid">
0
</td>
<td style="text-align:center;border-bottom: 1px solid">
2
</td>
<td style="text-align:center;border-bottom: 1px solid">
-2
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
<td style="text-align:left;">
2021-10-10
</td>
<td style="text-align:left;">
Jamaica
</td>
<td style="text-align:left;">
Canada
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
2021-10-13
</td>
<td style="text-align:left;border-bottom: 1px solid">
Jamaica
</td>
<td style="text-align:left;border-bottom: 1px solid">
Honduras
</td>
<td style="text-align:left;border-bottom: 1px solid">
Away
</td>
<td style="text-align:center;border-bottom: 1px solid">
2
</td>
<td style="text-align:center;border-bottom: 1px solid">
0
</td>
<td style="text-align:center;border-bottom: 1px solid">
2
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
<td style="text-align:left;">
2021-10-10
</td>
<td style="text-align:left;">
Mexico
</td>
<td style="text-align:left;">
Honduras
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
<td style="text-align:left;border-bottom: 1px solid">
2021-10-13
</td>
<td style="text-align:left;border-bottom: 1px solid">
Mexico
</td>
<td style="text-align:left;border-bottom: 1px solid">
El Salvador
</td>
<td style="text-align:left;border-bottom: 1px solid">
Away
</td>
<td style="text-align:center;border-bottom: 1px solid">
2
</td>
<td style="text-align:center;border-bottom: 1px solid">
0
</td>
<td style="text-align:center;border-bottom: 1px solid">
2
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
<td style="text-align:left;">
2021-10-10
</td>
<td style="text-align:left;">
Panama
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
2021-10-13
</td>
<td style="text-align:left;border-bottom: 1px solid">
Panama
</td>
<td style="text-align:left;border-bottom: 1px solid">
Canada
</td>
<td style="text-align:left;border-bottom: 1px solid">
Away
</td>
<td style="text-align:center;border-bottom: 1px solid">
1
</td>
<td style="text-align:center;border-bottom: 1px solid">
4
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
<td style="text-align:left;">
2021-10-10
</td>
<td style="text-align:left;">
United States
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
2021-10-13
</td>
<td style="text-align:left;border-bottom: 1px solid">
United States
</td>
<td style="text-align:left;border-bottom: 1px solid">
Costa Rica
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
</tbody>
</table>

## Strength of Schedule

To figure out who has played the hardest slate so far, I look at how a
team’s opponents fared in their other games and how the team then
performed relative to that. This does not yet account for number of
home/away matches by each nation. Here you can see each team and their
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
Panama
</td>
<td style="text-align:center;">
1.10
</td>
<td style="text-align:center;">
0.83
</td>
<td style="text-align:center;">
0.27
</td>
<td style="text-align:center;">
8
</td>
</tr>
<tr>
<td style="text-align:left;">
Jamaica
</td>
<td style="text-align:center;">
1.10
</td>
<td style="text-align:center;">
0.93
</td>
<td style="text-align:center;">
0.17
</td>
<td style="text-align:center;">
5
</td>
</tr>
<tr>
<td style="text-align:left;">
El Salvador
</td>
<td style="text-align:center;">
1.13
</td>
<td style="text-align:center;">
1.00
</td>
<td style="text-align:center;">
0.13
</td>
<td style="text-align:center;">
5
</td>
</tr>
<tr>
<td style="text-align:left;">
Canada
</td>
<td style="text-align:center;">
0.97
</td>
<td style="text-align:center;">
0.93
</td>
<td style="text-align:center;">
0.03
</td>
<td style="text-align:center;">
10
</td>
</tr>
<tr>
<td style="text-align:left;">
Honduras
</td>
<td style="text-align:center;">
0.97
</td>
<td style="text-align:center;">
0.97
</td>
<td style="text-align:center;">
0.00
</td>
<td style="text-align:center;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
Mexico
</td>
<td style="text-align:center;">
0.83
</td>
<td style="text-align:center;">
1.00
</td>
<td style="text-align:center;">
-0.17
</td>
<td style="text-align:center;">
14
</td>
</tr>
<tr>
<td style="text-align:left;">
Costa Rica
</td>
<td style="text-align:center;">
0.93
</td>
<td style="text-align:center;">
1.13
</td>
<td style="text-align:center;">
-0.20
</td>
<td style="text-align:center;">
6
</td>
</tr>
<tr>
<td style="text-align:left;">
United States
</td>
<td style="text-align:center;">
0.80
</td>
<td style="text-align:center;">
1.03
</td>
<td style="text-align:center;">
-0.23
</td>
<td style="text-align:center;">
11
</td>
</tr>
</tbody>
</table>

Panama has played the hardest schedule with only Honduras remaining
before the second set of games. The US has the easiest schedule as they
have not yet played Mexico.

## Real Basic Result-Only Rankings

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
Canada
</td>
<td style="text-align:center;">
0.97
</td>
<td style="text-align:center;">
0.93
</td>
<td style="text-align:center;">
0.03
</td>
<td style="text-align:center;">
0.73
</td>
<td style="text-align:center;">
0.30
</td>
<td style="text-align:center;">
1.03
</td>
<td style="text-align:center;">
10
</td>
</tr>
<tr>
<td style="text-align:left;">
Mexico
</td>
<td style="text-align:center;">
0.83
</td>
<td style="text-align:center;">
1.00
</td>
<td style="text-align:center;">
-0.17
</td>
<td style="text-align:center;">
0.67
</td>
<td style="text-align:center;">
0.33
</td>
<td style="text-align:center;">
1.00
</td>
<td style="text-align:center;">
14
</td>
</tr>
<tr>
<td style="text-align:left;">
United States
</td>
<td style="text-align:center;">
0.80
</td>
<td style="text-align:center;">
1.03
</td>
<td style="text-align:center;">
-0.23
</td>
<td style="text-align:center;">
0.47
</td>
<td style="text-align:center;">
0.13
</td>
<td style="text-align:center;">
0.60
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
1.10
</td>
<td style="text-align:center;">
0.83
</td>
<td style="text-align:center;">
0.27
</td>
<td style="text-align:center;">
0.17
</td>
<td style="text-align:center;">
0.10
</td>
<td style="text-align:center;">
0.27
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
0.93
</td>
<td style="text-align:center;">
1.13
</td>
<td style="text-align:center;">
-0.20
</td>
<td style="text-align:center;">
-0.47
</td>
<td style="text-align:center;">
0.10
</td>
<td style="text-align:center;">
-0.37
</td>
<td style="text-align:center;">
6
</td>
</tr>
<tr>
<td style="text-align:left;">
Jamaica
</td>
<td style="text-align:center;">
1.10
</td>
<td style="text-align:center;">
0.93
</td>
<td style="text-align:center;">
0.17
</td>
<td style="text-align:center;">
-0.27
</td>
<td style="text-align:center;">
-0.23
</td>
<td style="text-align:center;">
-0.50
</td>
<td style="text-align:center;">
5
</td>
</tr>
<tr>
<td style="text-align:left;">
El Salvador
</td>
<td style="text-align:center;">
1.13
</td>
<td style="text-align:center;">
1.00
</td>
<td style="text-align:center;">
0.13
</td>
<td style="text-align:center;">
-0.67
</td>
<td style="text-align:center;">
-0.03
</td>
<td style="text-align:center;">
-0.70
</td>
<td style="text-align:center;">
5
</td>
</tr>
<tr>
<td style="text-align:left;">
Honduras
</td>
<td style="text-align:center;">
0.97
</td>
<td style="text-align:center;">
0.97
</td>
<td style="text-align:center;">
0.00
</td>
<td style="text-align:center;">
-0.63
</td>
<td style="text-align:center;">
-0.70
</td>
<td style="text-align:center;">
-1.33
</td>
<td style="text-align:center;">
3
</td>
</tr>
</tbody>
</table>

Canada and Mexico are virtually tied at the top of the table after
Canada’s big win over Panama, which was the largest over expectation of
any match to date. El Salvador has plummeted from top 4 to bottom 2 in
the last three games.

### Big Ugly Table

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
0.2
</td>
<td style="text-align:center;">
1.8
</td>
<td style="text-align:center;">
-1.6
</td>
<td style="text-align:center;">
-0.8
</td>
<td style="text-align:center;">
-0.8
</td>
<td style="text-align:left;">
-1.6
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
1.6
</td>
<td style="text-align:center;">
0.6
</td>
<td style="text-align:center;">
1.0
</td>
<td style="text-align:center;">
0.4
</td>
<td style="text-align:center;">
0.6
</td>
<td style="text-align:left;">
1.0
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
0.4
</td>
<td style="text-align:center;">
0.8
</td>
<td style="text-align:center;">
-0.4
</td>
<td style="text-align:center;">
2.2
</td>
<td style="text-align:center;">
0.4
</td>
<td style="text-align:left;">
2.6
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
1.8
</td>
<td style="text-align:center;">
0.4
</td>
<td style="text-align:center;">
1.4
</td>
<td style="text-align:center;">
0.6
</td>
<td style="text-align:center;">
0.8
</td>
<td style="text-align:left;">
1.4
</td>
<td style="text-align:left;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-10-10
</td>
<td style="text-align:left;">
Canada
</td>
<td style="text-align:left;">
Jamaica
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
0.8
</td>
<td style="text-align:center;">
1.6
</td>
<td style="text-align:center;">
-0.8
</td>
<td style="text-align:center;">
-1.6
</td>
<td style="text-align:center;">
0.8
</td>
<td style="text-align:left;">
-0.8
</td>
<td style="text-align:left;">
1
</td>
</tr>
<tr>
<td style="text-align:left;border-bottom: 1px solid">
2021-10-13
</td>
<td style="text-align:left;border-bottom: 1px solid">
Canada
</td>
<td style="text-align:left;border-bottom: 1px solid">
Panama
</td>
<td style="text-align:left;border-bottom: 1px solid">
Home
</td>
<td style="text-align:center;border-bottom: 1px solid">
4
</td>
<td style="text-align:center;border-bottom: 1px solid">
1
</td>
<td style="text-align:center;border-bottom: 1px solid">
3
</td>
<td style="text-align:center;border-bottom: 1px solid">
1.0
</td>
<td style="text-align:center;border-bottom: 1px solid">
0.4
</td>
<td style="text-align:center;border-bottom: 1px solid">
0.6
</td>
<td style="text-align:center;border-bottom: 1px solid">
3.6
</td>
<td style="text-align:center;border-bottom: 1px solid">
0.0
</td>
<td style="text-align:left;border-bottom: 1px solid">
3.6
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
1.2
</td>
<td style="text-align:center;">
1.2
</td>
<td style="text-align:center;">
0.0
</td>
<td style="text-align:center;">
-1.2
</td>
<td style="text-align:center;">
1.2
</td>
<td style="text-align:left;">
0.0
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
1.8
</td>
<td style="text-align:center;">
0.6
</td>
<td style="text-align:center;">
1.2
</td>
<td style="text-align:center;">
-0.6
</td>
<td style="text-align:center;">
0.8
</td>
<td style="text-align:left;">
0.2
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
0.6
</td>
<td style="text-align:center;">
1.4
</td>
<td style="text-align:center;">
-0.8
</td>
<td style="text-align:center;">
-0.4
</td>
<td style="text-align:center;">
-0.4
</td>
<td style="text-align:left;">
-0.8
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
0.4
</td>
<td style="text-align:center;">
2.0
</td>
<td style="text-align:center;">
-1.6
</td>
<td style="text-align:center;">
-2.0
</td>
<td style="text-align:center;">
0.4
</td>
<td style="text-align:left;">
-1.6
</td>
<td style="text-align:left;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-10-10
</td>
<td style="text-align:left;">
Costa Rica
</td>
<td style="text-align:left;">
El Salvador
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
0.2
</td>
<td style="text-align:center;">
1.0
</td>
<td style="text-align:center;">
-0.8
</td>
<td style="text-align:center;">
1.0
</td>
<td style="text-align:center;">
-0.8
</td>
<td style="text-align:left;">
0.2
</td>
<td style="text-align:left;">
3
</td>
</tr>
<tr>
<td style="text-align:left;border-bottom: 1px solid">
2021-10-13
</td>
<td style="text-align:left;border-bottom: 1px solid">
Costa Rica
</td>
<td style="text-align:left;border-bottom: 1px solid">
United States
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
1.4
</td>
<td style="text-align:center;border-bottom: 1px solid">
0.6
</td>
<td style="text-align:center;border-bottom: 1px solid">
0.8
</td>
<td style="text-align:center;border-bottom: 1px solid">
0.4
</td>
<td style="text-align:center;border-bottom: 1px solid">
-0.6
</td>
<td style="text-align:left;border-bottom: 1px solid">
-0.2
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
1.8
</td>
<td style="text-align:center;">
0.8
</td>
<td style="text-align:center;">
1.0
</td>
<td style="text-align:center;">
-0.8
</td>
<td style="text-align:center;">
1.8
</td>
<td style="text-align:left;">
1.0
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
0.4
</td>
<td style="text-align:center;">
2.0
</td>
<td style="text-align:center;">
-1.6
</td>
<td style="text-align:center;">
-2.0
</td>
<td style="text-align:center;">
0.4
</td>
<td style="text-align:left;">
-1.6
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
1.4
</td>
<td style="text-align:center;">
0.8
</td>
<td style="text-align:center;">
0.6
</td>
<td style="text-align:center;">
-0.8
</td>
<td style="text-align:center;">
-1.6
</td>
<td style="text-align:left;">
-2.4
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
1.2
</td>
<td style="text-align:center;">
1.0
</td>
<td style="text-align:center;">
0.2
</td>
<td style="text-align:center;">
0.0
</td>
<td style="text-align:center;">
1.2
</td>
<td style="text-align:left;">
1.2
</td>
<td style="text-align:left;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-10-10
</td>
<td style="text-align:left;">
El Salvador
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
2
</td>
<td style="text-align:center;">
-1
</td>
<td style="text-align:center;">
0.4
</td>
<td style="text-align:center;">
0.8
</td>
<td style="text-align:center;">
-0.4
</td>
<td style="text-align:center;">
0.2
</td>
<td style="text-align:center;">
-1.6
</td>
<td style="text-align:left;">
-1.4
</td>
<td style="text-align:left;">
0
</td>
</tr>
<tr>
<td style="text-align:left;border-bottom: 1px solid">
2021-10-13
</td>
<td style="text-align:left;border-bottom: 1px solid">
El Salvador
</td>
<td style="text-align:left;border-bottom: 1px solid">
Mexico
</td>
<td style="text-align:left;border-bottom: 1px solid">
Home
</td>
<td style="text-align:center;border-bottom: 1px solid">
0
</td>
<td style="text-align:center;border-bottom: 1px solid">
2
</td>
<td style="text-align:center;border-bottom: 1px solid">
-2
</td>
<td style="text-align:center;border-bottom: 1px solid">
1.6
</td>
<td style="text-align:center;border-bottom: 1px solid">
0.6
</td>
<td style="text-align:center;border-bottom: 1px solid">
1.0
</td>
<td style="text-align:center;border-bottom: 1px solid">
-0.6
</td>
<td style="text-align:center;border-bottom: 1px solid">
-0.4
</td>
<td style="text-align:left;border-bottom: 1px solid">
-1.0
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
1.8
</td>
<td style="text-align:center;">
0.6
</td>
<td style="text-align:center;">
1.2
</td>
<td style="text-align:center;">
0.4
</td>
<td style="text-align:center;">
0.8
</td>
<td style="text-align:left;">
1.2
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
0.4
</td>
<td style="text-align:center;">
1.4
</td>
<td style="text-align:center;">
-1.0
</td>
<td style="text-align:center;">
-1.4
</td>
<td style="text-align:center;">
0.4
</td>
<td style="text-align:left;">
-1.0
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
1.0
</td>
<td style="text-align:center;">
0.6
</td>
<td style="text-align:center;">
0.4
</td>
<td style="text-align:center;">
0.4
</td>
<td style="text-align:center;">
-3.0
</td>
<td style="text-align:left;">
-2.6
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
0.8
</td>
<td style="text-align:center;">
1.0
</td>
<td style="text-align:center;">
-0.2
</td>
<td style="text-align:center;">
-1.0
</td>
<td style="text-align:center;">
0.8
</td>
<td style="text-align:left;">
-0.2
</td>
<td style="text-align:left;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-10-10
</td>
<td style="text-align:left;">
Honduras
</td>
<td style="text-align:left;">
Mexico
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
1.4
</td>
<td style="text-align:center;">
0.6
</td>
<td style="text-align:center;">
0.8
</td>
<td style="text-align:center;">
-0.6
</td>
<td style="text-align:center;">
-1.6
</td>
<td style="text-align:left;">
-2.2
</td>
<td style="text-align:left;">
0
</td>
</tr>
<tr>
<td style="text-align:left;border-bottom: 1px solid">
2021-10-13
</td>
<td style="text-align:left;border-bottom: 1px solid">
Honduras
</td>
<td style="text-align:left;border-bottom: 1px solid">
Jamaica
</td>
<td style="text-align:left;border-bottom: 1px solid">
Home
</td>
<td style="text-align:center;border-bottom: 1px solid">
0
</td>
<td style="text-align:center;border-bottom: 1px solid">
2
</td>
<td style="text-align:center;border-bottom: 1px solid">
-2
</td>
<td style="text-align:center;border-bottom: 1px solid">
0.4
</td>
<td style="text-align:center;border-bottom: 1px solid">
1.6
</td>
<td style="text-align:center;border-bottom: 1px solid">
-1.2
</td>
<td style="text-align:center;border-bottom: 1px solid">
-1.6
</td>
<td style="text-align:center;border-bottom: 1px solid">
-1.6
</td>
<td style="text-align:left;border-bottom: 1px solid">
-3.2
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
1.6
</td>
<td style="text-align:center;">
0.4
</td>
<td style="text-align:center;">
1.2
</td>
<td style="text-align:center;">
0.6
</td>
<td style="text-align:center;">
-0.4
</td>
<td style="text-align:left;">
0.2
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
0.6
</td>
<td style="text-align:center;">
1.2
</td>
<td style="text-align:center;">
-0.6
</td>
<td style="text-align:center;">
-1.2
</td>
<td style="text-align:center;">
-2.4
</td>
<td style="text-align:left;">
-3.6
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
0.6
</td>
<td style="text-align:center;">
0.8
</td>
<td style="text-align:center;">
-0.2
</td>
<td style="text-align:center;">
0.2
</td>
<td style="text-align:center;">
-0.4
</td>
<td style="text-align:left;">
-0.2
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
1.4
</td>
<td style="text-align:center;">
0.8
</td>
<td style="text-align:center;">
0.6
</td>
<td style="text-align:center;">
-0.8
</td>
<td style="text-align:center;">
-0.6
</td>
<td style="text-align:left;">
-1.4
</td>
<td style="text-align:left;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-10-10
</td>
<td style="text-align:left;">
Jamaica
</td>
<td style="text-align:left;">
Canada
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
2.0
</td>
<td style="text-align:center;">
0.8
</td>
<td style="text-align:center;">
1.2
</td>
<td style="text-align:center;">
-0.8
</td>
<td style="text-align:center;">
2.0
</td>
<td style="text-align:left;">
1.2
</td>
<td style="text-align:left;">
1
</td>
</tr>
<tr>
<td style="text-align:left;border-bottom: 1px solid">
2021-10-13
</td>
<td style="text-align:left;border-bottom: 1px solid">
Jamaica
</td>
<td style="text-align:left;border-bottom: 1px solid">
Honduras
</td>
<td style="text-align:left;border-bottom: 1px solid">
Away
</td>
<td style="text-align:center;border-bottom: 1px solid">
2
</td>
<td style="text-align:center;border-bottom: 1px solid">
0
</td>
<td style="text-align:center;border-bottom: 1px solid">
2
</td>
<td style="text-align:center;border-bottom: 1px solid">
0.4
</td>
<td style="text-align:center;border-bottom: 1px solid">
1.6
</td>
<td style="text-align:center;border-bottom: 1px solid">
-1.2
</td>
<td style="text-align:center;border-bottom: 1px solid">
0.4
</td>
<td style="text-align:center;border-bottom: 1px solid">
0.4
</td>
<td style="text-align:left;border-bottom: 1px solid">
0.8
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
0.6
</td>
<td style="text-align:center;">
1.2
</td>
<td style="text-align:center;">
-0.6
</td>
<td style="text-align:center;">
0.8
</td>
<td style="text-align:center;">
-0.4
</td>
<td style="text-align:left;">
0.4
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
0.8
</td>
<td style="text-align:center;">
0.8
</td>
<td style="text-align:center;">
0.0
</td>
<td style="text-align:center;">
0.2
</td>
<td style="text-align:center;">
0.8
</td>
<td style="text-align:left;">
1.0
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
1.0
</td>
<td style="text-align:center;">
1.0
</td>
<td style="text-align:center;">
0.0
</td>
<td style="text-align:center;">
0.0
</td>
<td style="text-align:center;">
0.0
</td>
<td style="text-align:left;">
0.0
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
1.8
</td>
<td style="text-align:center;">
0.6
</td>
<td style="text-align:center;">
1.2
</td>
<td style="text-align:center;">
0.4
</td>
<td style="text-align:center;">
0.8
</td>
<td style="text-align:left;">
1.2
</td>
<td style="text-align:left;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-10-10
</td>
<td style="text-align:left;">
Mexico
</td>
<td style="text-align:left;">
Honduras
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
0.4
</td>
<td style="text-align:center;">
1.4
</td>
<td style="text-align:center;">
-1.0
</td>
<td style="text-align:center;">
1.6
</td>
<td style="text-align:center;">
0.4
</td>
<td style="text-align:left;">
2.0
</td>
<td style="text-align:left;">
3
</td>
</tr>
<tr>
<td style="text-align:left;border-bottom: 1px solid">
2021-10-13
</td>
<td style="text-align:left;border-bottom: 1px solid">
Mexico
</td>
<td style="text-align:left;border-bottom: 1px solid">
El Salvador
</td>
<td style="text-align:left;border-bottom: 1px solid">
Away
</td>
<td style="text-align:center;border-bottom: 1px solid">
2
</td>
<td style="text-align:center;border-bottom: 1px solid">
0
</td>
<td style="text-align:center;border-bottom: 1px solid">
2
</td>
<td style="text-align:center;border-bottom: 1px solid">
0.4
</td>
<td style="text-align:center;border-bottom: 1px solid">
1.0
</td>
<td style="text-align:center;border-bottom: 1px solid">
-0.6
</td>
<td style="text-align:center;border-bottom: 1px solid">
1.0
</td>
<td style="text-align:center;border-bottom: 1px solid">
0.4
</td>
<td style="text-align:left;border-bottom: 1px solid">
1.4
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
0.8
</td>
<td style="text-align:center;">
1.0
</td>
<td style="text-align:center;">
-0.2
</td>
<td style="text-align:center;">
-1.0
</td>
<td style="text-align:center;">
0.8
</td>
<td style="text-align:left;">
-0.2
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
0.8
</td>
<td style="text-align:center;">
1.0
</td>
<td style="text-align:center;">
-0.2
</td>
<td style="text-align:center;">
2.0
</td>
<td style="text-align:center;">
0.8
</td>
<td style="text-align:left;">
2.8
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
1.8
</td>
<td style="text-align:center;">
0.4
</td>
<td style="text-align:center;">
1.4
</td>
<td style="text-align:center;">
0.6
</td>
<td style="text-align:center;">
0.8
</td>
<td style="text-align:left;">
1.4
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
0.2
</td>
<td style="text-align:center;">
1.4
</td>
<td style="text-align:center;">
-1.2
</td>
<td style="text-align:center;">
-1.4
</td>
<td style="text-align:center;">
-0.8
</td>
<td style="text-align:left;">
-2.2
</td>
<td style="text-align:left;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-10-10
</td>
<td style="text-align:left;">
Panama
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
0
</td>
<td style="text-align:center;">
1
</td>
<td style="text-align:center;">
1.8
</td>
<td style="text-align:center;">
0.6
</td>
<td style="text-align:center;">
1.2
</td>
<td style="text-align:center;">
0.4
</td>
<td style="text-align:center;">
1.8
</td>
<td style="text-align:left;">
2.2
</td>
<td style="text-align:left;">
3
</td>
</tr>
<tr>
<td style="text-align:left;border-bottom: 1px solid">
2021-10-13
</td>
<td style="text-align:left;border-bottom: 1px solid">
Panama
</td>
<td style="text-align:left;border-bottom: 1px solid">
Canada
</td>
<td style="text-align:left;border-bottom: 1px solid">
Away
</td>
<td style="text-align:center;border-bottom: 1px solid">
1
</td>
<td style="text-align:center;border-bottom: 1px solid">
4
</td>
<td style="text-align:center;border-bottom: 1px solid">
-3
</td>
<td style="text-align:center;border-bottom: 1px solid">
1.2
</td>
<td style="text-align:center;border-bottom: 1px solid">
0.6
</td>
<td style="text-align:center;border-bottom: 1px solid">
0.6
</td>
<td style="text-align:center;border-bottom: 1px solid">
0.4
</td>
<td style="text-align:center;border-bottom: 1px solid">
-2.8
</td>
<td style="text-align:left;border-bottom: 1px solid">
-2.4
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
0.4
</td>
<td style="text-align:center;">
1.4
</td>
<td style="text-align:center;">
-1.0
</td>
<td style="text-align:center;">
-1.4
</td>
<td style="text-align:center;">
0.4
</td>
<td style="text-align:left;">
-1.0
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
1.8
</td>
<td style="text-align:center;">
0.6
</td>
<td style="text-align:center;">
1.2
</td>
<td style="text-align:center;">
0.4
</td>
<td style="text-align:center;">
0.8
</td>
<td style="text-align:left;">
1.2
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
0.2
</td>
<td style="text-align:center;">
1.2
</td>
<td style="text-align:center;">
-1.0
</td>
<td style="text-align:center;">
2.8
</td>
<td style="text-align:center;">
-0.8
</td>
<td style="text-align:left;">
2.0
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
0.8
</td>
<td style="text-align:center;">
1.2
</td>
<td style="text-align:center;">
-0.4
</td>
<td style="text-align:center;">
0.8
</td>
<td style="text-align:center;">
0.8
</td>
<td style="text-align:left;">
1.6
</td>
<td style="text-align:left;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
2021-10-10
</td>
<td style="text-align:left;">
United States
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
1
</td>
<td style="text-align:center;">
-1
</td>
<td style="text-align:center;">
1.0
</td>
<td style="text-align:center;">
1.2
</td>
<td style="text-align:center;">
-0.2
</td>
<td style="text-align:center;">
-1.2
</td>
<td style="text-align:center;">
0.0
</td>
<td style="text-align:left;">
-1.2
</td>
<td style="text-align:left;">
0
</td>
</tr>
<tr>
<td style="text-align:left;border-bottom: 1px solid">
2021-10-13
</td>
<td style="text-align:left;border-bottom: 1px solid">
United States
</td>
<td style="text-align:left;border-bottom: 1px solid">
Costa Rica
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
0.6
</td>
<td style="text-align:center;border-bottom: 1px solid">
0.6
</td>
<td style="text-align:center;border-bottom: 1px solid">
0.0
</td>
<td style="text-align:center;border-bottom: 1px solid">
1.4
</td>
<td style="text-align:center;border-bottom: 1px solid">
-0.4
</td>
<td style="text-align:left;border-bottom: 1px solid">
1.0
</td>
<td style="text-align:left;border-bottom: 1px solid">
3
</td>
</tr>
</tbody>
</table>

I’ll try to make these all sortable in the future.

---Number of Appearances of artists on the chart

SELECT artists,
        COUNT(artists) numberofapperance

 FROM 
         `portfolio-394309.Spotify_Top_100_2018.top2018`
         GROUP BY
         1
         ORDER BY
         2 DESC

---Are there more artists in the Top 100 with 'Lil' in their name, or with 'DJ' in their name?
SELECT 
   'Lil' AS type,
COUNT(DISTINCT artists) AS nberofartists 
 FROM 
  Spotify_Top_100_2018.top2018
 
 WHERE UPPER(artists) LIKE '%LIL%'
 GROUP BY 
 1
UNION ALL
 SELECT 
   'DJ' AS type,
COUNT(DISTINCT artists) AS nberofartists 
 FROM 
  Spotify_Top_100_2018.top2018
 
 WHERE UPPER(artists) LIKE '%DJ%'
 GROUP BY 
 1

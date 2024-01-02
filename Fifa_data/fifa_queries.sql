SET SESSION sql_mode = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
SET GLOBAL sql_mode = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
SET GLOBAL sql_mode = '';
SET SQL_SAFE_UPDATES = 0;
UPDATE fifa.worldcupmatches
SET City = REPLACE( City, '"', '' )
WHERE City LIKE '"%';
UPDATE fifa.worldcupmatches
SET Datetime = REPLACE( Datetime, '"', '' )
WHERE Datetime LIKE '"%';
-- SELECT a.MatchID, a.ROUNDID, `Away Team Name`, `Away Team Initials` FROM fifa.worldcupmatches a 
-- JOIN fifa.worldcupplayers b on a.MatchID=b.MatchID and a.ROUNDID=b.RoundID GROUP BY a.MatchID ORDER BY a.RoundID
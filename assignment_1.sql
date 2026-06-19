WITH FullSportStats AS (
    SELECT 
        p.Name AS PlayerName,
        p.Position,
        t.TeamName,
        c.Name AS CoachName,
        m.MatchDate,
        m.Opponent,
        ps.Points,
        ps.Aces,
        ps.Blocks
    FROM PlayerStats ps
    JOIN Players p ON ps.PlayerID = p.PlayerID
    JOIN Teams t ON p.TeamID = t.TeamID
    JOIN Coaches c ON t.CoachID = c.CoachID
    JOIN Matches m ON ps.MatchID = m.MatchID
)
SELECT 
    Position, 
    TeamName, 
    SUM(Points) AS TotalPoints, 
    AVG(Aces) AS AvgAces,
    SUM(Blocks) AS TotalBlocks
FROM FullSportStats
WHERE Position = 'Setter'
GROUP BY Position, TeamName

UNION ALL 
SELECT 
    Position, 
    TeamName, 
    SUM(Points) AS TotalPoints, 
    AVG(Aces) AS AvgAces,
    SUM(Blocks) AS TotalBlocks
FROM FullSportStats
WHERE Position = 'Outside Hitter'
GROUP BY Position, TeamName

ORDER BY TotalPoints DESC;
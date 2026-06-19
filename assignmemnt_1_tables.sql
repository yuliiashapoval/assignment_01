CREATE TABLE Coaches (
    CoachID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100)
);
CREATE TABLE Teams (
    TeamID INT PRIMARY KEY,
    TeamName VARCHAR(100),
    CoachID INT
);
CREATE TABLE Players (
    PlayerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Position VARCHAR(50),
    TeamID INT
);
CREATE TABLE Matches (
    MatchID INT PRIMARY KEY,
    MatchDate DATE,
    Opponent VARCHAR(100),
    Location VARCHAR(100)
);
CREATE TABLE PlayerStats (
    StatID INT PRIMARY KEY,
    PlayerID INT,
    MatchID INT,
    Points INT,
    Aces INT,
    Blocks INT
);

/* Create the BULLPEN user */
create table players (
player_id varchar2(5),
date_of_birth date,
firstname varchar2(30),
lastname varchar2(30),
gender varchar2(1),
email varchar2(50),
phone varchar2(12),
primary_guardian varchar2(60)
);

alter table players add constraint pk_player
primary key (player_id);


create table teams(
team_id varchar2(5),
division varchar2(10),
team_name varchar2(30),
head_coach varchar2(30),
assistant_coach varchar2(30)
);

alter table teams add constraint team_id 
primary key (team_id);


create table team_players(
team_id  varchar2(5),
player_id varchar2(5)
);

alter table team_players add constraint pk_team_players
primary key (team_id,player_id);

alter table team_players add constraint fk_teams
foreign key (team_id) references teams (team_id);

alter table team_players add constraint fk_players
foreign key (player_id) references players (player_id);


create table divisions (
division_id varchar2(5),
division_name varchar2(30),
division_sponsor varchar2(30),
division_logo varchar2(30),
track_standing varchar2(1)
);

alter table divisions add constraint pk_division
primary key (division_id);


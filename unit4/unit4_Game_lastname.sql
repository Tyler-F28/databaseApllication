-- =====================================================================
-- Unit 4 — Build and Fill Your Database
-- Client: Game
-- Database Applications Development · MCCC
--
-- Rename this file unit4_lastname.sql before you start.
-- Use unit4_Game_Data.xlsx for the columns, keys, and data rows.
--
-- Name:
-- =====================================================================


-- =====================================================================
-- PART 1 — DROP the tables (last table first)
-- Order: inventory, characters, items, classes, players
-- =====================================================================




-- =====================================================================
-- PART 2 — CREATE the tables (in this order)
-- Put a comment above each table:  -- tablename: one row = ...
-- Add at least two CHECK rules of your own.
-- =====================================================================

 create table players(
 player_username text not null,
  player_email text not null check (player_email like '%@%.%'),
  player_country text,
   player_joined text,
    primary key (player_username));


create table classes(
    class_name Text not null,
    class_role Text not null,
    class_base_health integer not null check ,
    primary key (class_name));


create table items (
    item_name text not null,
    item_type text not null,
    item_gold_value integer not null check (item_gold_value > 0),
    primary key (item_name));



create table characters
    character_id integer not null,
    character_name text not null,
    level integer,
    class_name text not null,
    player_username text not null,
    primary key (character_id),
    foreign key (class_name) references classes(class_name),
    foreign key (player_username) references players(player_username);



create table inventory (
    character_id integer not null,
    item_name text not null,
    quantity integer not null check (quantity > 0),
    primary key (character_id, item_name),
    foreign key (character_id) references characters(character_id),
    foreign key (item_name) references items(item_name));




-- =====================================================================
-- PART 3 — INSERT the four rows for each table (same order as Part 2)
-- =====================================================================

-- players
insert into players (player_username, player_email, player_country, player_joined) values
('NightOwl_22', 'nightowl22@mail.com', 'USA', '2023-04-12'),
('DragonFist', 'dragonfist@mail.com', 'Canada', '2022-11-03'),
('PixelQueen', 'pixelqueen@mail.com', 'UK', '2024-01-20'),
('LootGoblin', 'lootgoblin@mail.com', 'Mexico', '2023-08-15');







-- classes
insert into classes (class_name, class_role, class_base_health) values
('Warrior', 'Tank', 150),
('Mage', 'Damage', 80),
('Cleric', 'Healer', 100),
('Rogue', 'Damage', 90);



-- items
insert into items (item_name, item_type, item_gold_value) values
('Iron Sword', 'Weapon', 25),
('Health Potion', 'Potion', 10),
('Fire Staff', 'Weapon', 300),
('Dragon Scale Armor', 'Armor', 1200);



-- characters
insert into characters (character_id, character_name, level, class_name, player_username) values
(1, 'Shadow', 44, 'Rogue', 'NightOwl_22'),
(2, 'Brakka', 31, 'Warrior', 'DragonFist'),
(3, 'Lumi', 12, 'Mage', 'PixelQueen'),
(4, 'Shadow', 7, 'Cleric', 'LootGoblin');


-- inventory
insert into inventory (character_id, item_name, quantity) values
(1, 'Iron Sword', 1),
(2, 'Dragon Scale Armor', 1),
(3, 'Fire Staff', 1),
(4, 'Health Potion', 5);




-- =====================================================================
-- PART 4 — CHECK YOUR WORK: SELECT * FROM each table
-- ====================================================================



-- Run the whole script twice. No errors both times?
-- Write Changes, then commit this file and your .db file.

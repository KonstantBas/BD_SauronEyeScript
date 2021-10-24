do $$ 
DECLARE army1_ID integer:= 1;
DECLARE army2_ID integer:= 1;
DECLARE location_ID integer:= 1;
DECLARE battle_ID integer:= random()*(20000-1)+1;

begin

IF (
	( With power(sum) as (
	select sum(power) from ability join hero on ability.ability_id=hero.ability_id where hero.army_id=army1_ID
	union all
	select sum(power) from artifact join hero on artifact.artifact_id=hero.artifact_id where hero.army_id=army1_ID
	union all
	select sum(power) from unit join army on unit.army_id=army.army_id where unit.army_id=army1_ID
) select sum(sum) as army from power )
	= 
	( With power(sum) as (
	select sum(power) from ability join hero on ability.ability_id=hero.ability_id where hero.army_id=army2_ID
	union all
	select sum(power) from artifact join hero on artifact.artifact_id=hero.artifact_id where hero.army_id=army2_ID
	union all
	select sum(power) from unit join army on unit.army_id=army.army_id where unit.army_id=army2_ID
) 
select sum(sum) as army from power )) 
THEN
INSERT INTO history VALUES (battle_ID,army1_ID,army2_ID,location_ID,true);
Raise Notice 'Yeee'; 
ELSE
INSERT INTO history VALUES (battle_ID,army1_ID,army2_ID,location_ID,false);
Raise Notice 'Nooo'; 
END IF;
end $$
	

CREATE OR REPLACE FUNCTION find_all_activities_for_owner(name varchar(200)) RETURNS SETOF activity AS $$
	SELECT a.*
	FROM activity a
	JOIN "user"
	ON owner_id = "user".id
	WHERE username = name;
$$ LANGUAGE SQL;
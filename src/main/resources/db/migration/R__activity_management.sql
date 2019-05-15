create or replace function add_activity(in_title varchar(200), in_description text, in_owner_id bigint DEFAULT (select id from "user" where username = 'default owner'))
	returns activity as $$
	declare
		new_activity activity%rowtype;
	begin
		insert into activity (id, title, description, owner_id)
		values(nextval('id_generator'), in_title, in_description, in_owner_id)
	end;
$$ language plpgsql;
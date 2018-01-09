CREATE TABLE log_channel (
	id_batch int4,
	channel_id varchar(255),
	log_date timestamp,
	logging_object_type varchar(255),
	object_name varchar(255),
	object_copy varchar(255),
	repository_directory varchar(255),
	filename varchar(255),
	object_id varchar(255),
	object_revision varchar(255),
	parent_channel_id varchar(255),
	root_channel_id varchar(255)
);
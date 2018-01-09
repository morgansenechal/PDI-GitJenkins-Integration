CREATE TABLE public.log_job (
	id_job int4,
	channel_id varchar(255),
	jobname varchar(255),
	status varchar(15),
	lines_read int8,
	lines_written int8,
	lines_updated int8,
	lines_input int8,
	lines_output int8,
	lines_rejected int8,
	errors int8,
	startdate timestamp,
	enddate timestamp,
	logdate timestamp,
	depdate timestamp,
	replaydate timestamp,
	log_field text
);
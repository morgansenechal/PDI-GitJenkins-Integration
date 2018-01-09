CREATE TABLE public.log_tran (
	id_batch int4,
	channel_id varchar(255),
	transname varchar(255),
	status varchar(15),
	lines_input int8,
	lines_output int8,
	errors int8,
	startdate timestamp,
	enddate timestamp,
	logdate timestamp,
	depdate timestamp,
	replaydate timestamp,
	log_field text,
	lines_read int8,
	lines_written int8,
	lines_updated int8,
	lines_rejected int8
);
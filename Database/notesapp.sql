CREATE TABLE notebooks(
	notebook_id INT auto_increment primary key not null,
	notebook_name varchar(100) not null,
	notebook_desc varchar(300) not null,
	created_at datetime default current_timestamp
	updated_at datetime default current_timestamp
);

CREATE TABLE notes(
	note_id INT auto_increment primary key not null,
	note_name varchar(100) not null,
	note_contents text ,
	note_type varchar(50) not null,
	book_id int not null,
	created_at datetime default current_timestamp,
	updated_at datetime default current_timestamp
	FOREIGN KEY (book_id) REFERENCES notebooks(notebook_id)
);

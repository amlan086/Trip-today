drop table transaction;
drop table hotel_status;
drop table hotel_info;
drop table customer_info;

create table customer_info(
    cus_id integer,
    cus_name varchar(20),
    profession varchar(20),
    Hometown varchar(20),
    contact_no number(11),
    primary key(cus_id)
    );
create  table hotel_info(
   hotel_id integer,
   place varchar(20),
   type varchar(20), 
   primary key (hotel_id)
);

create table hotel_status(
    hotel_id integer,
    room_no integer,
    floor integer,
    cost number,
     primary key (hotel_id,room_no),
     foreign key (hotel_id) references hotel_info(hotel_id) on delete cascade);

create table transaction(
   transaction_no integer,
   cus_id integer,
   room_no integer,
   payment number,
   hotel_id integer,
   primary key (transaction_no),
   foreign key(cus_id) references customer_info(cus_id) on delete cascade,
   foreign key(hotel_id,room_no) references hotel_status (hotel_id,room_no) on delete cascade
 );


insert into customer_info (cus_id, cus_name , profession,  Hometown , contact_no )
	      values (1,'A','teacher','Dhaka',01521311223);
insert into customer_info (cus_id, cus_name , profession,  Hometown , contact_no )
	      values (2,'B','Doctor','Dhaka',01521313623);
insert into customer_info (cus_id, cus_name , profession,  Hometown , contact_no )
	      values (3,'C','teacher','Dhaka',01522313223);
insert into customer_info (cus_id, cus_name , profession,  Hometown , contact_no )
	      values (4,'C','teacher','Dhaka',01522313223);


insert into hotel_info values(1,'Dhaka','Luxury');
	insert into hotel_info values(2,'Dhaka','Luxury');
		insert into hotel_info values(3,'Dhaka','Luxury');
			insert into hotel_info values(4,'Dhaka','Luxury');

insert into hotel_status values(1,101,2,20000);
	insert into hotel_status values(2,201,2,20000);
		insert into hotel_status values(3,301,2,20000);


insert into transaction values (1,1,101,20000,1);
	insert into transaction values (2,2,201,20000,2);
		insert into transaction values (3,3,301,20000,3);


commit
			
		

	      

	     

create schema weblogin;
use weblogin;

create table LOGIN(
	username varchar(20),
    lastname nvarchar(20),
    password varchar(20),
    isAdmin bool
);

insert into LOGIN values('dinhducbac1998', 'Đinh Đức Bắc', 'a1234567', true);
insert into LOGIN values('huynhtanthinh1999', 'Huỳnh Tấn Thịnh', 'a1234567', true);
insert into LOGIN values('hoangphuocan1999', 'Hoàng Phước An', 'a1234567', false);
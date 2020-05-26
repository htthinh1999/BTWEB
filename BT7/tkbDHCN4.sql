create schema if not exists tkbDHCN4;
use tkbDHCN4;

create table tblSINHVIEN(
	masv varchar(10) primary key,
    tensv nvarchar(30),
    lop nvarchar(10)
);

create table tblMONHOC(
	mamh varchar(10) primary key,
    tenmh nvarchar(30),
    sotinchi int
);

create table tblTHOIKHOABIEU(
    thoigian varchar(10) primary key,
	mamh varchar(10) references tblMONHOC(mamh),
    giangvien nvarchar(30)
);

create table tblKETQUA(
	mamh varchar(10) references tblMONHOC(mamh),
    masv varchar(10) references tblSINHVIEN(masv),
    diem float,
    primary key (mamh, masv)
);

insert into tblSINHVIEN values('17DC001', 'Hoàng Phước An', 'ĐHCN4A');
insert into tblSINHVIEN values('17DC003', 'Đinh Đức Bắc', 'ĐHCN4A');
insert into tblSINHVIEN values('17DC027', 'Huỳnh Tấn Thịnh', 'ĐHCN4A');

insert into tblMONHOC values('DH4203', 'Cấu trúc dữ liệu & giải thuật', 3);
insert into tblMONHOC values('DC4204', 'Cơ sở dữ liệu', 4);
insert into tblMONHOC values('DC4106', 'Kiến trúc máy tính', 4);

insert into tblTHOIKHOABIEU values('Thứ 2', 'DH4203', 'Trần Thị Mỹ Hiền');
insert into tblTHOIKHOABIEU values('Thứ 3', 'DC4204', 'Lê Thị Giang');
insert into tblTHOIKHOABIEU values('Thứ 4', 'DC4106', 'Đinh Văn Thế');

insert into tblKETQUA values('DH4203', '17DC001', 7.5);
insert into tblKETQUA values('DH4203', '17DC003', 9.75);
insert into tblKETQUA values('DH4203', '17DC027', 9.5);

insert into tblKETQUA values('DH4204', '17DC001', 7);
insert into tblKETQUA values('DH4204', '17DC003', 9);
insert into tblKETQUA values('DH4204', '17DC027', 8);

insert into tblKETQUA values('DC4106', '17DC001', 8.5);
insert into tblKETQUA values('DC4106', '17DC003', 10);
insert into tblKETQUA values('DC4106', '17DC027', 9.5);

SELECT tenmh, thoigian, sotinchi, giangvien
FROM tblMONHOC INNER JOIN tblTHOIKHOABIEU
WHERE tblMONHOC.mamh = tblTHOIKHOABIEU.mamh;

SELECT tensv, lop, tenmh, diem
FROM tblKETQUA INNER JOIN tblSINHVIEN INNER JOIN tblMONHOC
WHERE tblKETQUA.mamh = tblMONHOC.mamh AND tblKETQUA.masv = tblSINHVIEN.masv
ORDER BY tenmh asc, diem desc;


drop database quanlytruonghoc;

create database quanlytruonghoc;

use quanlytruonghoc;

create table GiaoVien(
	id int primary key auto_increment,
    hovaten nvarchar(200) not null unique
);

create table Khoi(
	id int primary key auto_increment,
    tenkhoi nvarchar(200) not null
);

create table Lop(
	id int primary key auto_increment,
    tenlop varchar(200) not null,
    id_khoi int not null,
    foreign key (id_khoi) references khoi(id) on delete cascade on update cascade
);

create unique index tenlop_on_lop ON Lop ( tenlop);

create table HocSinh(
	id int primary key auto_increment,
    ten varchar(200) not null,
    gioitinh varchar(200) not null,
    ngaysinh date not null,
    parent_id int default 0
);

create unique index tenhs_on_hocsinh ON HocSinh ( ten);

create table lop_hocsinh (
	id_hocsinh int not null,
    id_lop int not null,
    id_giaovien int not null,
    namhoc year not null,
    hocky int not null,
    foreign key (id_hocsinh) references hocsinh(id) on delete cascade on update cascade,
    foreign key (id_lop) references lop(id) on delete cascade on update cascade,
    foreign key (id_giaovien) references giaovien(id) on delete cascade on update cascade
);

create table monhoc (
	id int  primary key auto_increment,
    tenmon varchar(200) not null unique
);

create unique index tenmon_on_monhoc ON monhoc ( tenmon);

create table giaovien_monhoc (
	id_mon int not null,
    id_giaovien int not null,
    foreign key (id_mon) references monhoc(id) on delete cascade on update cascade,
    foreign key (id_giaovien) references giaovien(id) on delete cascade on update cascade
);

create table diem (
	id int primary key auto_increment,
    id_mon int not null,
    id_hocsinh int not null,
    heso1 float default 0,
    heso2 float default 0,
    heso3 float default 0,
    thi float default 0,
    foreign key (id_mon) references monhoc(id) on delete cascade on update cascade,
    foreign key (id_hocsinh) references hocsinh(id) on delete cascade on update cascade
);

INSERT INTO `khoi`(`TenKhoi`) VALUES ('6'),('7'),('8'),('9');

INSERT INTO `lop`(`Tenlop`, `id_khoi`) VALUES 
	('Lớp 6A1',1),
	('Lớp 6A2',1),
	('Lớp 7A1',2),
	('Lớp 7A2',2),
	('Lớp 8A1',3),
	('Lớp 8A2',3),
	('Lớp 9A1',4),
	('Lớp 9A2',4);
    
INSERT INTO `giaovien`(`HoVaTen`) VALUES 
	('name a'),
	('name b'),
	('name c'),
	('name d'),
	('name e'),
	('name f'),
	('name g'),
	('name h');
    
INSERT INTO `monhoc`(`TenMon`) VALUES 
('toán 6 tập 1'),
('toán 6 tập 2'),
('văn tập 1'),
('sinh học'),
('tiếng anh 6-1'),
('tiếng anh 6-2');

INSERT INTO `giaovien_monhoc`(`id_mon`, `id_giaovien`) VALUES 
( 1,6 ),
( 1,3 ),
( 2,2 ),
( 2,4 ),
( 4,5 ),
( 3,4 ),
(2 ,3 ),
( 5,6 );

INSERT INTO `hocsinh`( `Ten`, `GioiTinh`, `NgaySinh`, `parent_id`) VALUES 
('Nguyễn văn a','Nam','2023-01-11',0),
('Nguyễn văn 1','Nữ','2023-01-11',0),
('Nguyễn văn 2','Nam','2023-03-11',0),
('Nguyễn văn 3','Nam','2023-01-11',0),
('Nguyễn văn 4','Nam','2023-04-11',0),
('Nguyễn văn 5','Nam','2023-01-11',1),
('Nguyễn văn 6','Nam','2023-01-11',0),
('Nguyễn văn 7','Nữ','2023-04-11',0),
('Nguyễn văn 8','Nam','2023-01-11',1),
('Nguyễn văn 9','Nam','2023-01-11',0),
('Nguyễn văn c','Nam','2023-01-11',2);

INSERT INTO `lop_hocsinh`(`id_hocsinh`, `id_lop`, `id_giaovien`, `namhoc`, `hocky`) VALUES 
( 1,1 ,1,'2023',1),
( 2,1 ,1,'2023',1),
( 3, 1,1,'2023',1),
( 4, 1,1,'2023',1),
(5 ,1 ,1,'2023',1),
( 6, 1,1,'2023',1),
( 7, 1,1,'2023',1),
( 8, 1,1,'2023',1),
(9 , 2,1,'2023',1),
(10 ,2 ,1,'2023',1),
( 1,1 ,1,'2023',2),
( 2,1 ,1,'2023',2),
( 3, 1,1,'2023',2),
( 4, 1,1,'2023',2),
(5 ,1 ,1,'2023',2),
( 6, 1,1,'2023',2),
( 7, 1,1,'2023',2),
( 8, 1,1,'2023',2),
(9 , 2,1,'2023',2),
(10 ,2 ,1,'2023',2);

INSERT INTO `diem`( `id_mon`, `id_hocsinh`, `heso1`, `heso2`, `heso3`, `thi`) VALUES 
( 1, 1, 3,7 , 8, 9),
(3 , 1,4 ,7 ,8 , 9),
( 4, 1, 3, 7, 8,5 ),
(6 , 1,3 , 7, 7,5 ),
(1 , 1,5 ,7 , 6,4 ),
(3 , 2, 8, 5,4 , 8),
( 4,2 ,9 , 4, 3,7 ),
(6 , 2,7 , 3, 5,8 ),
( 1, 2,4 , 5, 7, 8),
( 3,2 ,3 , 4, 6,8 ),
(4 ,3 , 0, 9, 8,5 ),
(6 ,3 , 9, 7,7 , 6),
(1 ,3 ,5 , 6,7 ,7 ),
( 3, 3, 5, 6,7 , 9),
( 4,3 ,4 ,6 , 7, 8),
(6 , 4, 5, 6,5 , 4),
(1 ,4 , 8,7 , 6, 5),
(3 , 4, 6,5, 3,5 ),
(4 , 4, 4,3 , 5,6 ),
( 6,4 , 9, 7, 3, 4);

select * from giaovien;
select * from monhoc;
select * from lop;
select * from hocsinh;

-- truy vấn giáo viên và số lượng môn dạy
select a.hovaten,count(*) as "số lượng môn dạy" from giaovien as a 
inner join giaovien_monhoc as b on a.id = b.id_giaovien
inner join monhoc as c on b.id_mon = c.id group by a.id;

-- truy vấn học sinh kỳ 1 năm 2023 lơp 6a1 các môn học và điểm
select * from monhoc as a
inner join diem as b  on a.id = b.id_mon
inner join hocsinh as c on c.id = b.id_hocsinh
inner join lop_hocsinh as d on c.id = d.id_hocsinh
inner join lop as e on e.id = d.id_lop
where d.namhoc = '2023' and d.hocky = 1 and e.tenlop = "Lớp 6A1" and a.tenmon = "toán 6 tập 1";

-- truy vấn trung bình môn kỳ 1 năm 2023 của 1 môn bất kỳ kỳ 1 năm 2023 lơp 6a1
select a.tenmon "Tên môn",avg((b.heso1 + b.heso2 + b.heso3 + b.thi)/4) as "trung bình môn kỳ 1 năm 2023" from monhoc as a
inner join diem as b  on a.id = b.id_mon
inner join hocsinh as c on c.id = b.id_hocsinh
inner join lop_hocsinh as d on c.id = d.id_hocsinh
inner join lop as e on e.id = d.id_lop
where d.namhoc = '2023' and d.hocky = 1 and e.tenlop = "Lớp 6A1" and a.tenmon = "toán 6 tập 1";

-- truy vấn trung bình môn kỳ 1 năm 2023 của tất cả các môn
select a.tenmon as "Tên môn",avg((b.heso1 + b.heso2 + b.heso3 + b.thi)/4) as "trung bình môn kỳ 1 năm 2023" from monhoc as a
inner join diem as b  on a.id = b.id_mon
inner join hocsinh as c on c.id = b.id_hocsinh
inner join lop_hocsinh as d on c.id = d.id_hocsinh
inner join lop as e on e.id = d.id_lop
where d.namhoc = '2023' and d.hocky = 1 group by a.tenmon;


-- truy vấn lấy danh sách học sinh của lớp 6A1 năm học 2023
select * from lop as a
inner join lop_hocsinh as b on a.id = b.id_lop
inner join hocsinh as c on c.id =b.id_hocsinh
where a.tenlop = "Lớp 6A1" and b.namhoc = '2023' and b.hocky = 1;

-- Đếm số lượng học sinh đang học lớp 6A1 năm 2023
select count(*) as "số lượng học sinh" from lop as a
inner join lop_hocsinh as b on a.id = b.id_lop
inner join hocsinh as c on c.id =b.id_hocsinh
where a.tenlop = "Lớp 6A1" and b.namhoc = '2023' and b.hocky = 1;


select *from lop as a
inner join lop_hocsinh as b on a.id = b.id_lop
inner join hocsinh as c on c.id =b.id_hocsinh
inner join diem as d on c.id =d.id_hocsinh
where a.tenlop = "Lớp 6A1" and b.namhoc = '2023' and b.hocky = 1;

-- danh sách học sinh và trung bình trung học kỳ 1 năm 2023
select *, avg((d.heso1 + d.heso2 + d.heso3 + d.thi)/4) as "trung bình học kỳ"  from lop as a
inner join lop_hocsinh as b on a.id = b.id_lop
inner join hocsinh as c on c.id =b.id_hocsinh
inner join diem as d on c.id =d.id_hocsinh
where a.tenlop = "Lớp 6A1" and b.namhoc = '2023' and b.hocky = 1
group by c.ten;
















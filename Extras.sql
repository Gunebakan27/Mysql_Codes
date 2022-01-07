-- C O N C A T --

create table customer (
musteri_no int,
ad VARCHAR(22),
soyad VARCHAR(25),
sehir varchar(45),
cinsiyet varchar(15),
puan int
);
INSERT INTO customer VALUES(111,'ebru', 'akar','denizli','kadin',78);
INSERT INTO customer VALUES(222,'ayse', 'kara','ankara','kadin',90);
INSERT INTO customer VALUES(333,'ali','gel','istanbul','erkek',66);
INSERT INTO customer VALUES(444, 'mehmet','okur','mus','erkek',98);

select concat('Adiniz Soyadiniz : ', ad, ' ', soyad) Ad_Soyad from customer;

select concat(musteri_no, '. ', ad,' ',soyad) Musteri, sehir, cinsiyet, puan
from customer;
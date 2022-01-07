/*============================================
        TABLO OLUSTURMA (CRUD-create)
============================================*/
use sys;
drop table student;
-- yorum
CREATE TABLE student
(
id VARCHAR(4),
name VARCHAR(25),
age int
);
INSERT INTO student VALUES('1001','MEHMET ALİ', 25);
INSERT INTO student VALUES('1002', 'AYSE YILMAZ', 34);
INSERT INTO student VALUES('1003', 'JOHN STAR', 56);
INSERT INTO student VALUES('1004', 'MARY BROWN', 17);

/*============================================
        PARCALI VERI GIRISI
============================================*/
INSERT INTO student(name, age) VALUES('Samet AY', 24 );

/*============================================
        TABLODAN VERI SORGULAMA
============================================*/
select * from student;

/*============================================
               TABLO SILME
============================================*/
drop table urunler;




/*ABCID TI ABC ISIM
T: ABC SEHIR TI ABC OZELT: H101 ACI BADEM HASTANESİ İSTANBUL H102 HASZEKI HASTANESI İSTANBUL N. H103 MEDIKOL HASTANESI IZMIR
Y H104 NEMORYIL HASTANESI ANKARA Y*/
use sys;
Create table Hastaneler(
id varchar(5) primary key,
isim varchar(40),
sehir varchar(20),
ozel varchar(20)
);

insert into hastaneler values('H101', 'ACI MADEM HASTANESİ', 'İSTANBUL','Y');
insert into hastaneler values('H102', 'HASZEKI HASTANESI', 'İSTANBUL', 'N');
insert into hastaneler values ('H103', 'MEDIKOL HASTANESI', 'IZMIR', 'Y');
insert into hastaneler values ('H104', 'NEMORYIL HASTANESI', 'ANKARA', 'Y');
select * from hastaneler;

create table Hastalar(
kimlik_no varchar(11) primary key,
isim varchar(20),
teshis varchar(20)
);
insert into hastalar values('12345678901', 'Ali Can','Gizli Seker');
insert into hastalar values('45678901121', 'Ayse Yilmaz','Hipertansiyon');
insert into hastalar values('78901123451', 'Steve Job','Pankreatit');
insert into hastalar values('12344321251', 'Tom Hanks','COVID19');

create table bolumler(
bolum_id varchar(5) primary key,
bolum_adi varchar(20)
);
insert into bolumler values('DHL','Dahiliye');
insert into bolumler values('KBB','Kulak-Burun-Boğaz');
insert into bolumler values('NRJ','Noroloji');
insert into bolumler values('GAST','Gastoroloji');
insert into bolumler values('KARD','Kardioloji');
insert into bolumler values('PSK','Psikiyatri');
insert into bolumler values('GOZ','Goz Hastaliklari');

use sys;
create table hasta_kayitlar(
kimlik_no varchar(20) primary key,
hasta_isim varchar(20),
hastane_adi varchar(20),
bolum_adi varchar(20),
teshis varchar(20) 
);
insert into hasta_kayitlar (kimlik_no, hasta_isim)values ('1111','noname');
insert into hasta_kayitlar values('2222','noname',null,null,null);
insert into hasta_kayitlar values('3333','noname',null,null,null);

select * from hasta_kayitlar;

select * from hastalar;

update hasta_kayitlar set kimlik_no='99991111222', hasta_isim='Salvadore Dali', hastane_adi='John Hopins',bolum_adi='Noroloji',teshis='Parkinson'
where kimlik_no='3333';

update hasta_kayitlar set 
kimlik_no=(select kimlik_no from hastalar where isim='Ali Can'), 
hasta_isim=(select isim from hastalar where isim='Ali Can'), 
hastane_adi=(select isim from hastaneler where id='H104'),
bolum_adi=(select bolum_adi from bolumler where bolum_id='DHL'),
teshis=(select teshis from hastalar where isim='Ali Can')
where kimlik_no='1111';

update hasta_kayitlar set 
kimlik_no=(select kimlik_no from hastalar where isim='Steve Job'), 
hasta_isim=(select isim from hastalar where isim='Ayse Yilmaz'), 
hastane_adi=(select isim from hastaneler where id='H103'),
bolum_adi=(select bolum_adi from bolumler where bolum_id='KBB'),
teshis=(select teshis from hastalar where isim='Tom Hanks')
where kimlik_no='2222';

drop table hasta_kayitlar;
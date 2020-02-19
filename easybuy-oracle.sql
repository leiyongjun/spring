--������ռ�
create tablespace easybuy
datafile 'C:\oracle\oracle_date\easybuy.dbf'
size 50m
autoextend on
next 10m;
--ɾ����ռ�
drop tablespace easybuy;

--�����û�
create user easybuy
identified by easybuy
default tablespace easybuy;

grant dba to easybuy;

----------------������,����easybuy�û�������------------------------------------------
drop table easybuy_news
-- ������
CREATE TABLE easybuy_news (
  id NUMBER(10) NOT NULL primary key,
  title varchar2(40) NOT NULL,
  content varchar2(1000) NOT NULL,
  createTime varchar2(10) NOT NULL 
)

--��������
create sequence sq_news
increment by 1 --������ÿ�����Ӽ�
start with 1 --�Ӽ���ʼ��������1
nomaxvalue --���������ֵ
nocycle --һֱ�ۼӣ���ѭ��
nocache; --����������
-- ��ѯ����
select sq_news.nextval from dual ;

insert into easybuy_news(id,title,content,createtime)
values (sq_news.nextval, 'oracleѧϰ', 'ʹ���������װoracle,����oracle', '20200217');

select * from easybuy_news

insert  into easybuy_news(id,title,content,createTime) values   (531,'��Ա�ػ��¿�ʼ��','��Ա�ػ��¿�ʼ��,���ǸϿ��µ���,���������Ĳ����ݰ�,��������Ĳ���չ��ﳵ���������Ż�,������������','2010-12-22');
insert  into easybuy_news(id,title,content,createTime) values   (597,'ӭ˫����������','ӭ˫����������','2010-12-24');
insert  into easybuy_news(id,title,content,createTime) values   (649,'�����Ա,Ӯǧ������','�����Ա,Ӯǧ������','2010-12-22');
insert  into easybuy_news(id,title,content,createTime) values   (650,'���겻ҹ��,ͨ��Ҳ�ǿ�����','���겻ҹ��,ͨ��Ҳ�ǿ�����','2011-05-22');
insert  into easybuy_news(id,title,content,createTime) values   (651,'���ֶһ���ʼ��','���ֶһ���ʼ��','2010-12-22');
insert  into easybuy_news(id,title,content,createTime) values   (653,'�Ź�����1����','�Ź�����1����','2010-12-22');
insert  into easybuy_news(id,title,content,createTime) values   (664,'���¿�ʼǱ�','IBMEϵ��ȫ��������,���¿��˫�˴�����,��֤CPU����Ч����ת��','2013-08-05');
insert  into easybuy_news(id,title,content,createTime) values   (675,'aa','012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789','2013-08-14');
insert  into easybuy_news(id,title,content,createTime) values   (676,'ResultR','ResultResultResultResultResu','2016-03-28');
insert  into easybuy_news(id,title,content,createTime) values   (677,'��Ա�ػ��¿�ʼ��1','��Ա�ػ��¿�ʼ��','2010-12-22');
insert  into easybuy_news(id,title,content,createTime) values   (678,'ӭ˫����������2','ӭ˫����������','2010-12-24');
insert  into easybuy_news(id,title,content,createTime) values   (679,'�����Ա,Ӯǧ������3','�����Ա,Ӯǧ������','2010-12-22');
insert  into easybuy_news(id,title,content,createTime) values   (680,'���겻ҹ��,ͨ��Ҳ�ǿ�����4','���겻ҹ��,ͨ��Ҳ�ǿ�����','2011-05-22');
insert  into easybuy_news(id,title,content,createTime) values   (681,'���ֶһ���ʼ��5','���ֶһ���ʼ��','2010-12-22');
insert  into easybuy_news(id,title,content,createTime) values   (682,'�Ź�����1����6','�Ź�����1����','2010-12-22');
insert  into easybuy_news(id,title,content,createTime) values   (683,'���¿�ʼǱ�7','IBMEϵ��ȫ��������,���¿��˫�˴�����,��֤CPU����Ч����ת��','2013-08-05');
insert  into easybuy_news(id,title,content,createTime) values   (684,'aa8','012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789','2013-08-14');
insert  into easybuy_news(id,title,content,createTime) values   (685,'ResultR9','ResultResultResultResultResu','2016-03-28');
insert  into easybuy_news(id,title,content,createTime) values   (686,'��Ա�ػ��¿�ʼ��11','��Ա�ػ��¿�ʼ��','2010-12-22');
insert  into easybuy_news(id,title,content,createTime) values   (687,'ӭ˫����������21','ӭ˫����������','2010-12-24');
insert  into easybuy_news(id,title,content,createTime) values   (688,'�����Ա,Ӯǧ������31','�����Ա,Ӯǧ������','2010-12-22');
insert  into easybuy_news(id,title,content,createTime) values   (689,'���겻ҹ��,ͨ��Ҳ�ǿ�����41','���겻ҹ��,ͨ��Ҳ�ǿ�����','2011-05-22');
insert  into easybuy_news(id,title,content,createTime) values   (690,'���ֶһ���ʼ��51','���ֶһ���ʼ��','2010-12-22');
insert  into easybuy_news(id,title,content,createTime) values   (691,'�Ź�����1����61','�Ź�����1����','2010-12-22');
insert  into easybuy_news(id,title,content,createTime) values   (692,'���¿�ʼǱ�71','IBMEϵ��ȫ��������,���¿��˫�˴�����,��֤CPU����Ч����ת��','2013-08-05');
insert  into easybuy_news(id,title,content,createTime) values   (693,'aa81','012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789','2013-08-14');
insert  into easybuy_news(id,title,content,createTime) values   (694,'ResultR91','ResultResultResultResultResu','2016-03-28');
insert  into easybuy_news(id,title,content,createTime) values   (695,'��Ա�ػ��¿�ʼ��111','��Ա�ػ��¿�ʼ��','2010-12-22');
insert  into easybuy_news(id,title,content,createTime) values   (696,'ӭ˫����������211','ӭ˫����������','2010-12-24');
insert  into easybuy_news(id,title,content,createTime) values   (697,'�����Ա,Ӯǧ������311','�����Ա,Ӯǧ������','2010-12-22');
insert  into easybuy_news(id,title,content,createTime) values   (698,'���겻ҹ��,ͨ��Ҳ�ǿ�����411','���겻ҹ��,ͨ��Ҳ�ǿ�����','2011-05-22');
insert  into easybuy_news(id,title,content,createTime) values   (699,'���ֶһ���ʼ��511','���ֶһ���ʼ��','2010-12-22');
insert  into easybuy_news(id,title,content,createTime) values   (700,'�Ź�����1����611','�Ź�����1����','2010-12-22');
insert  into easybuy_news(id,title,content,createTime) values   (701,'���¿�ʼǱ�711','IBMEϵ��ȫ��������,���¿��˫�˴�����,��֤CPU����Ч����ת��','2013-08-05');
insert  into easybuy_news(id,title,content,createTime) values   (702,'aa811','012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789','2013-08-14');
insert  into easybuy_news(id,title,content,createTime) values   (703,'ResultR911','ResultResultResultResultResu','2016-03-28');



CREATE TABLE easybuy_order (
  id NUMBER(11) NOT NULL ,
  userId NUMBER(11) DEFAULT NULL,
  loginName varchar2(255) DEFAULT NULL,
  userAddress varchar2(255) DEFAULT NULL,
  createTime timestamp DEFAULT NULL,
  cost float DEFAULT NULL,
  serialNumber varchar2(255) DEFAULT NULL,
  PRIMARY KEY (id)
);


insert  into easybuy_order(id,userId,loginName,userAddress,createTime,cost,serialNumber) 
values (1,18,'shangzezhong','�����л�԰·С��',to_date('20160602 14:51:46','YYYYMMDD HH24:MI:SS'),1721,'60B7487F47F9434EAA5FD1D9E22CB06C');
insert  into easybuy_order(id,userId,loginName,userAddress,createTime,cost,serialNumber) 
values (2,18,'shangzezhong','�����к������ɸ�·',to_date('20160602 14:52:49','YYYYMMDD HH24:MI:SS'),8596,'8EF5E1557D55413781658A65FC301B8A');
insert  into easybuy_order(id,userId,loginName,userAddress,createTime,cost,serialNumber) 
values (3,2,'admin','�����к���������ׯ',to_date('20160603 11:41:09','YYYYMMDD HH24:MI:SS'),456,'51718726C1274CC59504AB4E6FD64BA0');


CREATE TABLE easybuy_order_detail (
  id NUMBER(10) NOT NULL ,
  orderId NUMBER(10) NOT NULL,
  productId NUMBER(10) NOT NULL,
  quantity NUMBER(10) NOT NULL,
  cost float NOT NULL,
  PRIMARY KEY (id)
);
insert  into easybuy_order_detail(id,orderId,productId,quantity,cost) values (1,1,733,5,760);
insert  into easybuy_order_detail(id,orderId,productId,quantity,cost) values
(2,1,734,4,608);
insert  into easybuy_order_detail(id,orderId,productId,quantity,cost) values
(3,1,735,1,152);
insert  into easybuy_order_detail(id,orderId,productId,quantity,cost) values
(4,1,738,1,45);
insert  into easybuy_order_detail(id,orderId,productId,quantity,cost) values
(5,1,739,1,156);
insert  into easybuy_order_detail(id,orderId,productId,quantity,cost) values
(6,2,755,1,8596);
insert  into easybuy_order_detail(id,orderId,productId,quantity,cost) values
(7,3,733,1,152);
insert  into easybuy_order_detail(id,orderId,productId,quantity,cost) values
(8,3,734,1,152);
insert  into easybuy_order_detail(id,orderId,productId,quantity,cost) values
(9,3,735,1,152);


CREATE TABLE easybuy_product (
  id NUMBER(10) NOT NULL,
  name varchar2(20) NOT NULL,
  description varchar2(1024) DEFAULT NULL,
  price float NOT NULL,
  stock NUMBER(10) NOT NULL,
  categoryLevel1Id NUMBER(10) DEFAULT NULL,
  categoryLevel2Id NUMBER(10) DEFAULT NULL,
  categoryLevel3Id NUMBER(10) DEFAULT NULL,
  fileName varchar2(200) DEFAULT NULL,
  isDelete NUMBER(1) DEFAULT '0',
  PRIMARY KEY (id)
);


insert  into easybuy_product(id,name,description,price,stock,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,fileName,isDelete) values (733,'���ζ�','����',152,94,548,654,655,'27A1789ED5764D82A5506DF3DC3933F9.jpg',0);
insert  into easybuy_product(id,name,description,price,stock,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,fileName,isDelete) values(734,'ϴ����','',152,995,548,654,655,'D6C9BD438C5643D6B1A6C52E5426FE22.jpg',0);
insert  into easybuy_product(id,name,description,price,stock,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,fileName,isDelete) values(735,'���ˮ','',152,998,548,654,655,'1A836D2B3A3348DDAB19807E6CEA8028.jpg',0);
insert  into easybuy_product(id,name,description,price,stock,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,fileName,isDelete) values(736,'��ˮ5852','',152,1000,548,654,655,'4D9499BAD92A42D291094E797BA2EA3F.jpg',0);
insert  into easybuy_product(id,name,description,price,stock,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,fileName,isDelete) values(737,'��ˮ','',152,111,548,654,655,'A9924F9DB68B4DF99FDBF05902075AF0.jpg',0);
insert  into easybuy_product(id,name,description,price,stock,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,fileName,isDelete) values(738,'���¶','',45,109,548,654,655,'3B059EDB5237407980458CE9EA9D3204.jpg',0);
insert  into easybuy_product(id,name,description,price,stock,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,fileName,isDelete) values(739,'����װ','',156,99,548,654,655,'A62C6DF55116440CA3DE9DB37901ED4F.jpg',0);
insert  into easybuy_product(id,name,description,price,stock,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,fileName,isDelete) values(740,'�緹��','',158,100,628,656,659,'40C3B76BA31246618E3CFC8723D33517.jpg',0);
insert  into easybuy_product(id,name,description,price,stock,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,fileName,isDelete) values(741,'Ӥ��ι��װ','',569,100,632,637,653,'401004B3D47C4C6FB1BC5EF19C21FC77.jpg',0);
insert  into easybuy_product(id,name,description,price,stock,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,fileName,isDelete) values(742,'����ײ�','',158,1000,660,661,662,'E03D74145A034F6D909879829CB99D80.jpg',0);
insert  into easybuy_product(id,name,description,price,stock,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,fileName,isDelete) values(743,'������ո','',589,1000,660,661,663,'7121E55099FC477680B1229205CE3D29.jpg',0);
insert  into easybuy_product(id,name,description,price,stock,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,fileName,isDelete) values(744,'��Ϊ2566','',589,1000,670,671,672,'F24B4140A2284B3788A38F3B5AD1809A.jpg',0);
insert  into easybuy_product(id,name,description,price,stock,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,fileName,isDelete) values(745,'��ҫ3C','',589,100,670,671,672,'F3921E12552A4D0AA3F75467B146A959.jpg',0);
insert  into easybuy_product(id,name,description,price,stock,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,fileName,isDelete) values(746,'С���ֻ�','',963,100,670,674,675,'72F75A371B0B4C26A7F72FAAEF96FC68.jpg',0);
insert  into easybuy_product(id,name,description,price,stock,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,fileName,isDelete) values(747,'��Ϊ2265','',896,1000,670,671,673,'161F355A8A8549BA8F7F4CE3B4F07E40.jpg',0);
insert  into easybuy_product(id,name,description,price,stock,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,fileName,isDelete) values(748,'Խ�ϼ��','',520,1000,660,661,662,'CBC98D3C9E544830821632F5C313D93E.jpg',0);
insert  into easybuy_product(id,name,description,price,stock,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,fileName,isDelete) values(749,'�ձ�������Ͱ','',5866,100,628,657,0,'A5AF40825E6940B2A59A040100E181A8.jpg',0);
insert  into easybuy_product(id,name,description,price,stock,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,fileName,isDelete) values(750,'����Yϵ��','',569,1000,670,690,691,'956DB0BEC41B41B8A06C05C950130E23.jpg',0);
insert  into easybuy_product(id,name,description,price,stock,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,fileName,isDelete) values(751,'�԰׽�1��','',589,1000,676,677,680,'66E96AF9E9714A5C9EA901811173D662.jpg',0);
insert  into easybuy_product(id,name,description,price,stock,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,fileName,isDelete) values(752,'Ī��˹��','',589,1000,676,678,0,'A7436BC607E74C81B392DCFE69D4AEAB.jpg',0);
insert  into easybuy_product(id,name,description,price,stock,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,fileName,isDelete) values(753,'��¹���̷�','',859,100,676,679,0,'3C465E7B8A324A8DA2A2EEE202E36166.jpg',0);
insert  into easybuy_product(id,name,description,price,stock,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,fileName,isDelete) values(754,'��ͯţ��','',5896,100,676,679,0,'D1AC9AE71ED348FA8D880FD4279D3422.jpg',0);
insert  into easybuy_product(id,name,description,price,stock,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,fileName,isDelete) values(755,'��ɳ��','',8596,99,628,696,0,'ED7921DE40FC47E18365754709A21194.jpg',0);
insert  into easybuy_product(id,name,description,price,stock,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,fileName,isDelete) values(756,'���ɺ�','',5966,100,628,696,0,'DB86CA25CA4F4B4AA906F46BE542C6A6.jpg',0);
insert  into easybuy_product(id,name,description,price,stock,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,fileName,isDelete) values(757,'ϴ��Һ','',58,1000,628,696,0,'E6CCDC343ACC471C908E9748776C6421.jpg',0);
insert  into easybuy_product(id,name,description,price,stock,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,fileName,isDelete) values(758,'���ɳ��','',596,123,628,696,0,'BD5C77465DC2466BBCE7F95FB9764392.jpg',0);
insert  into easybuy_product(id,name,description,price,stock,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,fileName,isDelete) values(759,'�������̷�','',5896,100,676,679,0,'9ED375098D42497B8FC33167E06D0EE8.jpg',0);
insert  into easybuy_product(id,name,description,price,stock,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,fileName,isDelete) values(760,'Ӥ����','',11000,100,681,682,687,'1DBC0930641D43C29D74A9E1B40FEEBB.jpg',0);
insert  into easybuy_product(id,name,description,price,stock,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,fileName,isDelete) values(761,'�Ŀ�Ӥ����','',963,100,681,682,688,'16290C4DBEAC4F00A636667019621468.jpg',0);
insert  into easybuy_product(id,name,description,price,stock,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,fileName,isDelete) values(762,'��ѹ������','',569,1000,681,683,685,'272CC434BE7A4469AB0E7882BD1A85FF.jpg',0);
insert  into easybuy_product(id,name,description,price,stock,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,fileName,isDelete) values(763,'͸��������','',8596,1000,681,683,684,'EAA8E66259BF4239B4A2237B62520EF1.jpg',0);
insert  into easybuy_product(id,name,description,price,stock,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,fileName,isDelete) values(764,'Ӥ������','',5896,1000,660,661,662,'08BE30BF7B5F4930B0093D8CC4056057.jpg',0);
insert  into easybuy_product(id,name,description,price,stock,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,fileName,isDelete) values(765,'Ҭ�ӷ�','',5963,1000,660,661,662,'9C006B8BD1AD45398F474A8471ADC50B.jpg',0);
insert  into easybuy_product(id,name,description,price,stock,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,fileName,isDelete) values(766,'�������','',200,100,660,661,663,'2E5A16E21E0640E0BAE03E9B995DCD28.jpg',0);
insert  into easybuy_product(id,name,description,price,stock,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,fileName,isDelete) values(767,'����������','',5896,1000,681,682,688,'2E1D2A5E65A94FEEA17C72E47C530057.jpg',0);
insert  into easybuy_product(id,name,description,price,stock,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,fileName,isDelete) values(768,'ֽ��','',5896,100,681,682,687,'443E5A4122064209AFE89250179A2FF0.jpg',0);
insert  into easybuy_product(id,name,description,price,stock,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,fileName,isDelete) values(769,'��θҺ','',152,1000,676,679,0,'30B5547CD7384DAA8A2F4F4D8C0BBF89.jpg',0);
insert  into easybuy_product(id,name,description,price,stock,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,fileName,isDelete) values(770,'����NTC','',8596,100,670,671,673,'48BC371A85A548B7A7589E3F542D911D.jpg',0);


CREATE TABLE easybuy_product_category (
  id number(10) NOT NULL,
  name varchar2(20) NOT NULL,
  parentId number(10) NOT NULL,
  type number(11) DEFAULT NULL,
  iconClass varchar2(255) DEFAULT NULL,
  PRIMARY KEY (id)
) ;


insert  into easybuy_product_category(id,name,parentId,type,iconClass) values (548,'��ױƷ',0,1,'');
insert  into easybuy_product_category(id,name,parentId,type,iconClass) values(628,'������Ʒ',0,1,'');
insert  into easybuy_product_category(id,name,parentId,type,iconClass) values(654,'�沿����',548,2,'');
insert  into easybuy_product_category(id,name,parentId,type,iconClass) values(655,'��Ů��',654,3,'');
insert  into easybuy_product_category(id,name,parentId,type,iconClass) values(656,'�;�',628,2,'');
insert  into easybuy_product_category(id,name,parentId,type,iconClass) values(657,'����',628,2,'');
insert  into easybuy_product_category(id,name,parentId,type,iconClass) values(658,'����',656,3,'');
insert  into easybuy_product_category(id,name,parentId,type,iconClass) values(659,'��',656,3,'');
insert  into easybuy_product_category(id,name,parentId,type,iconClass) values(660,'����ʳƷ,����',0,1,'');
insert  into easybuy_product_category(id,name,parentId,type,iconClass) values(661,'��ʳ/�ǹ�/�ɿ���',660,2,'');
insert  into easybuy_product_category(id,name,parentId,type,iconClass) values(662,'���',661,3,'');
insert  into easybuy_product_category(id,name,parentId,type,iconClass) values(663,'�۽�',661,3,'');
insert  into easybuy_product_category(id,name,parentId,type,iconClass) values(669,'���ڽ���',546,3,'');
insert  into easybuy_product_category(id,name,parentId,type,iconClass) values(670,'������Ʒ',0,1,'');
insert  into easybuy_product_category(id,name,parentId,type,iconClass) values(671,'�ֻ�',670,2,'');
insert  into easybuy_product_category(id,name,parentId,type,iconClass) values(672,'��Ϊ�ֻ�',671,3,'');
insert  into easybuy_product_category(id,name,parentId,type,iconClass) values(673,'�����ֻ�',671,3,'');
insert  into easybuy_product_category(id,name,parentId,type,iconClass) values(674,'�ֻ�',670,2,'');
insert  into easybuy_product_category(id,name,parentId,type,iconClass) values(675,'С���ֻ�',674,3,'');
insert  into easybuy_product_category(id,name,parentId,type,iconClass) values(676,'����ʳƷ',0,1,'');
insert  into easybuy_product_category(id,name,parentId,type,iconClass) values(677,'���걣��Ʒ',676,2,'');
insert  into easybuy_product_category(id,name,parentId,type,iconClass) values(678,'����Ӫ��Ʒ',676,2,'');
insert  into easybuy_product_category(id,name,parentId,type,iconClass) values(679,'��ͯ����Ʒ',676,2,'');
insert  into easybuy_product_category(id,name,parentId,type,iconClass) values(680,'�԰׽�',677,3,'');
insert  into easybuy_product_category(id,name,parentId,type,iconClass) values(681,'���',0,1,'');
insert  into easybuy_product_category(id,name,parentId,type,iconClass) values(682,'������',681,2,'');
insert  into easybuy_product_category(id,name,parentId,type,iconClass) values(683,'������',681,2,'');
insert  into easybuy_product_category(id,name,parentId,type,iconClass) values(684,'����',683,3,'');
insert  into easybuy_product_category(id,name,parentId,type,iconClass) values(685,'С��',683,3,'');
insert  into easybuy_product_category(id,name,parentId,type,iconClass) values(686,'����',683,3,'');
insert  into easybuy_product_category(id,name,parentId,type,iconClass) values(687,'����',682,3,'');
insert  into easybuy_product_category(id,name,parentId,type,iconClass) values(688,'����',682,3,'');
insert  into easybuy_product_category(id,name,parentId,type,iconClass) values(689,'С��',682,3,'');
insert  into easybuy_product_category(id,name,parentId,type,iconClass) values(690,'����',670,2,'');
insert  into easybuy_product_category(id,name,parentId,type,iconClass) values(691,'�������',690,3,'');
insert  into easybuy_product_category(id,name,parentId,type,iconClass) values(692,'����',656,3,NULL);
insert  into easybuy_product_category(id,name,parentId,type,iconClass) values(693,'���',656,3,NULL);
insert  into easybuy_product_category(id,name,parentId,type,iconClass) values(696,'����ר��',628,2,'');

drop table easybuy_user;
CREATE TABLE easybuy_user (
  id number(20) NOT NULL,
  loginName varchar2(255) NOT NULL,
  userName varchar2(255) NOT NULL,
  password varchar2(255) NOT NULL,
  sex number(2) DEFAULT 0,
  identityCode varchar2(60) DEFAULT NULL,
  email varchar2(80) DEFAULT NULL,
  mobile varchar2(11) DEFAULT NULL,
  type number(2) DEFAULT 0,
  PRIMARY KEY (id)
);


insert  into easybuy_user(id,loginName,userName,password,sex,identityCode,email,mobile,type) values (2,'admin','ϵͳ����Ա','e10adc3949ba59abbe56e057f20f883e',1,'130406198302141869','hello11@bdqn.com','1583233515',1);
insert  into easybuy_user(id,loginName,userName,password,sex,identityCode,email,mobile,type) values (10,'cgn','�̹���','e10adc3949ba59abbe56e057f20f883e',1,'140225189987854589','1044732267@qq.com','13366055011',0);
insert  into easybuy_user(id,loginName,userName,password,sex,identityCode,email,mobile,type) values (11,'hyl','������','e10adc3949ba59abbe56e057f20f883e',1,'140225198874584539','1044732267@qq.com','13366055010',0);
insert  into easybuy_user(id,loginName,userName,password,sex,identityCode,email,mobile,type) values (12,'ck','�¿�','e10adc3949ba59abbe56e057f20f883e',1,'140225189987854589','1044732267@qq.com','13366055010',0);
insert  into easybuy_user(id,loginName,userName,password,sex,identityCode,email,mobile,type) values (13,'kys','������','e10adc3949ba59abbe56e057f20f883e',1,'1402251985512541525','1044732267@qq.com','13366055010',0);
insert  into easybuy_user(id,loginName,userName,password,sex,identityCode,email,mobile,type) values (14,'sb','���','e10adc3949ba59abbe56e057f20f883e',1,'140225158987854589','1044732267@qq.com','13366055010',0);
insert  into easybuy_user(id,loginName,userName,password,sex,identityCode,email,mobile,type) values (15,'lb','���','e10adc3949ba59abbe56e057f20f883e',1,'140225189987854589','10447322658@qq.com','1336998554',0);
insert  into easybuy_user(id,loginName,userName,password,sex,identityCode,email,mobile,type) values (16,'lgw','���ΰ','e10adc3949ba59abbe56e057f20f883e',1,'140225189987854589','1011322658@qq.com','1336998554',0);
insert  into easybuy_user(id,loginName,userName,password,sex,identityCode,email,mobile,type) values (18,'shangzezhong','������','4297f44b13955235245b2497399d7a93',1,'140225198810013745','1044888844@qq.com','13366528458',0);
insert  into easybuy_user(id,loginName,userName,password,sex,identityCode,email,mobile,type) values (19,'liguangliang','�����','25f9e794323b453885f5181f1b624d0b',1,'140225198841547785','1047777@qq.com','13366055048',0);
insert  into easybuy_user(id,loginName,userName,password,sex,identityCode,email,mobile,type) values (20,'szz','�����','e10adc3949ba59abbe56e057f20f883e',1,'140225198810013748','1044732267@qq.com','13366555010',1);


  select id,name,description,price,stock,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,
  fileName,isDelete 
  from easybuy_product  
  where 1=1 and 
   rownum between  0 and 8






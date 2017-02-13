--用户表t_user
insert into t_user values(null,'习近平','习近平', '12345',1,'18809891234','xjping@tarena.com','2013-08-2 15:34:41','银行卡','工程师','汉族',1,'neusoft','1100114');
insert into t_user values(null,'胡锦涛','hujintao', 'yw12345',0,'18809895678','hjtao@tarena.com','2013-08-5 15:34:41','现金','扫厕所','黎族',1,'九江城管局','332500');
insert into t_user values(null,'张根硕','zhanggs', 'korea',1,'10001','zgs@tarena.com','2011-08-5 15:34:41','现金','歌手','棒子族',1,'SM','23456');
insert into t_user values(null,'刘英谦','谦哥', 'tarena',1,'123456789','liuyq@tarena.com','2012-07-5 15:34:41','银行卡','老师','壮族',0,'达内培训','23456');
insert into t_user values(null,'BigJack','jack', 'samsang',0,'123456789','jack@tarena.com','2013-05-5 15:34:41','银行卡','学生','汉族',1,'达内培训','23456');
insert into t_user values(null,'blackBerry','black', 'tarena',0,'123456789','black@tarena.com','2011-05-5 15:34:41','现金','经理','回族',0,'达内培训','23456');
insert into t_user values(null,'tarena','tarena', 'tarena',1,'123456789','tarena@tarena.com','2011-07-5 15:34:41','银行卡','老师','汉族',1,'达内培训','23456');
insert into t_user values(null,'李源潮','yuanchaoli', 'dazhonghua',1,'123456789','liyc@tarena.com','2013-07-5 15:34:41','银行卡','公务员','汉族',1,'中南海','23456');
insert into t_user values(null,'张德江','dejiangzhang', 'aizhonghua',1,'123456789','zhangdj@tarena.com','2013-08-1 15:34:41','现金','公务员','汉族',1,'中南海','23456');
insert into t_user values(null,'俞正声','zhengshengyu', 'china',1,'123456789','yuzs@tarena.com','2011-07-5 15:34:41','银行卡','老师','汉族',1,'达内培训','23456');
insert into t_user values(null,'tarena01','tarena01', 'tarena01',1,'123456789','tarena@tarena.com','2011-07-5 15:34:41','银行卡','老师','汉族',1,'达内培训','23456');
insert into t_user values(null,'tarena02','tarena02', 'tarena02',1,'123456789','tarena@tarena.com','2011-07-5 15:34:41','银行卡','老师','汉族',1,'达内培训','23456');
insert into t_user values(null,'tarena03','tarena03', 'tarena03',0,'123456789','tarena@tarena.com','2011-07-5 15:34:41','银行卡','老师','汉族',1,'达内培训','23456');
insert into t_user values(null,'tarena04','tarena04', 'tarena04',1,'123456789','tarena@tarena.com','2011-07-5 15:34:41','银行卡','老师','汉族',1,'达内培训','23456');
insert into t_user values(null,'北京','beijing', 'beijing',1,'123456789','tarena@tarena.com','2011-07-5 15:34:41','银行卡','老师','汉族',1,'达内培训','23456');
insert into t_user values(null,'上海','shanghai', 'shanghai',1,'123456789','tarena@tarena.com','2011-07-5 15:34:41','银行卡','老师','汉族',1,'达内培训','23456');
insert into t_user values(null,'九江','jiujiang', 'jiujiang',1,'123456789','tarena@tarena.com','2011-07-5 15:34:41','银行卡','老师','汉族',1,'达内培训','23456');

--账单表t_detail

insert into t_detail values(null,'openlab','192.169.1.1','2011-07-05 15:34:41','2011-07-5 16:34:41','192.168.232.23',60,'service1',60,60,'black',2011,7,5);
insert into t_detail values(null,'openlab','192.123.1.45','2011-07-09 12:34:41','2011-07-9 12:54:41','192.168.232.23',20,'service1',20,80,'black',2011,7,9);
insert into t_detail values(null,'openlab','192.168.1.121','2011-07-21 9:34:41','2011-07-21 9:44:41','192.168.232.23',10,'service1',10,90,'black',2011,7,21);
insert into t_detail values(null,'somelab','192.108.1.121','2012-08-02 9:34:41','2012-08-02 9:44:41','192.118.202.2',10,'service2',20,20,'black',2012,8,2);
insert into t_detail values(null,'somelab','192.123.1.45','2012-08-09 14:34:41','2012-08-09 15:54:41','192.118.202.2',20,'service2',40,60,'black',2012,8,9);
insert into t_detail values(null,'somelab','192.123.1.121','2012-08-29 12:34:41','2012-08-29 12:54:41','192.118.202.2',20,'service2',40,100,'black',2012,8,29);
insert into t_detail values(null,'somelab','192.123.1.121','2012-08-30 12:34:41','2012-08-30 12:54:41','192.118.202.2',20,'service2',40,140,'black',2012,8,30);
insert into t_detail values(null,'somelab','192.123.1.121','2013-03-3 12:34:41','2013-03-3 12:54:41','192.118.202.2',20,'service2',40,40,'black',2013,3,3);
insert into t_detail values(null,'somelab','192.123.1.121','2013-04-3 12:34:41','2013-04-3 12:54:41','192.18.202.2',20,'service2',40,40,'black',2013,4,3);
insert into t_detail values(null,'somelab','192.123.1.121','2013-05-3 12:34:41','2013-05-3 12:54:41','192.18.202.2',20,'service2',40,40,'black',2013,5,3);
insert into t_detail values(null,'somelab','192.123.1.121','2013-06-3 12:34:41','2013-06-3 12:54:41','192.18.202.2',20,'service2',40,40,'black',2013,6,3);


insert into t_detail values(null,'openlab','192.169.1.1','2011-07-05 15:34:41','2011-07-5 16:34:41','192.168.232.23',60,'service1',60,60,'jack',2011,7,5);
insert into t_detail values(null,'openlab','192.123.1.45','2011-07-09 12:34:41','2011-07-9 12:54:41','192.168.232.23',20,'service1',20,80,'jack',2011,7,9);
insert into t_detail values(null,'openlab','192.168.1.121','2011-07-21 9:34:41','2011-07-21 9:44:41','192.168.232.23',10,'service1',10,90,'jack',2011,7,21);
insert into t_detail values(null,'somelab','192.108.1.121','2012-08-02 9:34:41','2012-08-02 9:44:41','192.118.202.2',10,'service2',20,20,'jack',2012,8,2);
insert into t_detail values(null,'somelab','192.123.1.45','2012-08-09 14:34:41','2012-08-09 15:54:41','192.118.202.2',20,'service2',40,60,'jack',2012,8,9);
insert into t_detail values(null,'somelab','192.123.1.121','2012-08-29 12:34:41','2012-08-29 12:54:41','192.118.202.2',20,'service2',40,100,'jack',2012,8,29);
insert into t_detail values(null,'somelab','192.123.1.121','2012-08-30 12:34:41','2012-08-30 12:54:41','192.118.202.2',20,'service2',40,140,'jack',2012,8,30);
insert into t_detail values(null,'somelab','192.123.1.121','2013-03-3 12:34:41','2013-03-3 12:54:41','192.118.202.2',20,'service2',40,40,'jack',2013,3,3);
insert into t_detail values(null,'somelab','192.123.1.121','2013-04-3 12:34:41','2013-04-3 12:54:41','192.18.202.2',20,'service2',40,40,'jack',2013,4,3);
insert into t_detail values(null,'somelab','192.123.1.121','2013-05-3 12:34:41','2013-05-3 12:54:41','192.18.202.2',20,'service2',40,40,'jack',2013,5,3);
insert into t_detail values(null,'somelab','192.123.1.121','2013-06-3 12:34:41','2013-06-3 12:54:41','192.18.202.2',20,'service2',40,40,'jack',2013,6,3);

//费用表t_pricing
insert into t_pricing values(null,'service1',1,0,'资费每分钟1元，0月租');
insert into t_pricing values(null,'service2',2,0,'资费每分钟0元，0月租');
insert into t_pricing values(null,'service3',1,5,'资费每分钟1元，月租5元');
insert into t_pricing values(null,'service4',2,10,'资费每分钟2元，月租10元');

//角色表t_role

insert into t_role values(null,'超级管理员');
insert into t_role values(null,'账单管理员');
insert into t_role values(null,'费用管理员');

//管理员信息表t_admin

insert into t_admin values(null,'毛泽东'，'zedongmao','123456789','110','mzd@znh.com','2010-8-1 12:00:00',1);
insert into t_admin values(null,'周恩来'，'zhouenlai','123456','120','zel@znh.com','2010-8-2 12:00:00',2);
insert into t_admin values(null,'彭德怀'，'pengdehuai','12345','119','pdh@znh.com','2010-8-3 12:00:00',3);


//角色权限表t_role_right



//用户服务表t_user_service
insert into t_user_service values(null,1,'openlab','123','192.108.1.121',1,1,'2010-8-3 12:00:00','2014-8-3 12:00:00');
insert into t_user_service values(null,2,'openlab','123','192.108.1.121',1,1,'2010-8-3 12:00:00','2014-8-3 12:00:00');
insert into t_user_service values(null,3,'openlab','123','192.108.1.121',1,1,'2010-8-3 12:00:00','2014-8-3 12:00:00');
insert into t_user_service values(null,4,'somelab','123','192.108.1.121',1,1,'2010-8-3 12:00:00','2014-8-3 12:00:00');























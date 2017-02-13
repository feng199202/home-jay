


insert into t_system_module values(null,'权限管理','admin/manageRoleRightAction!');
insert into t_system_module values(null,'管理员管理','admin/manageAdminAction!');
insert into t_system_module values(null,'资费管理','pricing/magePricingAction!');
insert into t_system_module values(null,'用户管理','manageUser/manageUserAction!');
insert into t_system_module values(null,'账单管理','admin/manageReckonAction!');
insert into t_system_module values(null,'帐务管理','admin/manageAccountAction!');

insert into t_right values(null,'权限浏览','toListRights',1);
insert into t_right values(null,'权限增加','toAddRight',1);
insert into t_right values(null,'权限修改','toUpdateRights',1);
insert into t_right values(null,'权限删除','toDeleteRights',1);
insert into t_right values(null,'角色浏览','toBrowseRoles',1);
insert into t_right values(null,'角色增加','toAddRole',1);
insert into t_right values(null,'角色修改','toUpdateRoles',1);
insert into t_right values(null,'角色删除','toDeleteRoles',1);


insert into t_right values(null,'管理员浏览','toListAdmins',2);
insert into t_right values(null,'管理员增加','toAddAdmin',2);
insert into t_right values(null,'管理员修改','toUpdateAdmins',2);
insert into t_right values(null,'管理员删除','toDeleteAdmins',2);

insert into t_right values(null,'资费浏览','feeBrowse',3);
insert into t_right values(null,'资费增加','feeAdd',3);
insert into t_right values(null,'资费修改','feeForUp',3);
insert into t_right values(null,'资费删除','feeDel',3);

insert into t_right values(null,'帐务帐号查询','qureryUsers',4);
insert into t_right values(null,'帐务帐号增加','toAddUser',4);
insert into t_right values(null,'帐务帐号修改','acctbrForUpd',4);
insert into t_right values(null,'帐务帐号删除','acctbrForDel',4);
insert into t_right values(null,'业务帐号查询','listBuss',4);
insert into t_right values(null,'业务帐号增加','bussAdd',4);
insert into t_right values(null,'业务账号修改','bussForUp',4);
insert into t_right values(null,'业务账号删除','bussForDel',4);




insert into t_right values(null,'账单查询','toListReckon',5);

insert into t_right values(null,'账务年查询','listAccountYearly',6);
insert into t_right values(null,'账务月查询','listAccountMonthly',6);


insert into t_role values(null,'超级管理员');

insert into t_role_right values(1,1);
insert into t_role_right values(2,1);
insert into t_role_right values(3,1);
insert into t_role_right values(4,1);
insert into t_role_right values(5,1);
insert into t_role_right values(6,1);
insert into t_role_right values(7,1);
insert into t_role_right values(8,1);
insert into t_role_right values(9,1);
insert into t_role_right values(10,1);
insert into t_role_right values(11,1);
insert into t_role_right values(12,1);
insert into t_role_right values(13,1);
insert into t_role_right values(14,1);
insert into t_role_right values(15,1);
insert into t_role_right values(16,1);
insert into t_role_right values(17,1);
insert into t_role_right values(18,1);
insert into t_role_right values(19,1);
insert into t_role_right values(20,1);
insert into t_role_right values(21,1);
insert into t_role_right values(22,1);
insert into t_role_right values(23,1);
insert into t_role_right values(24,1);
insert into t_role_right values(25,1);
insert into t_role_right values(26,1);
insert into t_role_right values(27,1);

insert into t_admin values(null,'习近平','admin','1','999999','xijinping@chn.com','2012-08-15',1);





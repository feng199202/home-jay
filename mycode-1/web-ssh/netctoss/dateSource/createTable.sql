

	drop database netctoss;
	
	create database netctoss;
	
	use netctoss;

    create table t_admin (
    
        admin_id integer not null auto_increment,
        real_name varchar(20),
        account_name varchar(20),
        password varchar(20),
        admin_phone varchar(20),
        admin_email varchar(30),
        enroll_date date,
        role_id integer,
        primary key (admin_id)
        
    );

    create table t_detail (
        detail_id integer not null auto_increment,
        login_name varchar(20),
        login_ip varchar(24),
        login_date datetime,
        logout_date datetime,
        lab_ip varchar(24),
        duration bigint,
        service_name varchar(255),
        fee double precision,
        month_current_fee double precision,
        user_name varchar(255),
        year integer,
        month integer,
        day integer,
        primary key (detail_id)
    );

    create table t_pricing (
        pricing_id integer not null auto_increment,
        pricing_name varchar(20),
        base_fee double precision,
        rate_fee double precision,
        description varchar(50),
        primary key (pricing_id)
    );

    create table t_right (
        right_id integer not null auto_increment,
        right_name varchar(20),
        url varchar(100),
        system_module_id integer,
        primary key (right_id)
    );

    create table t_role (
        role_id integer not null auto_increment,
        role_name varchar(20),
        primary key (role_id)
    );

    create table t_role_right (
        right_id integer not null,
        role_id integer not null,
        primary key (role_id, right_id)
    );

    create table t_system_module (
        system_module_id integer not null auto_increment,
        system_module_name varchar(50),
        url varchar(100),
        primary key (system_module_id)
    );
	 
    create table t_user (
        user_id integer not null auto_increment,
        real_name varchar(20),
        account_name varchar(20),
        password varchar(20),
        account_status integer,
        user_phone varchar(20),
        user_email varchar(20),
        enroll_date date,
        payment_type varchar(20),
        career varchar(20),
        nationnality varchar(12),
        gender tinyint,
        company varchar(20),
        zip_code varchar(8),
        primary key (user_id)
    );

    create table t_user_service (
        service_id integer not null auto_increment,
        user_id integer,
        login_name varchar(20),
        login_password varchar(20),
        lab_ip varchar(20),
        service_status integer,
        pricing_id integer,
        enroll_date date,
        close_date date,
        primary key (service_id)
    );

    alter table t_admin 
        add index FK9FF53FC460A8966 (role_id), 
        add constraint FK9FF53FC460A8966 
        foreign key (role_id) 
        references t_role (role_id) ;

    alter table t_right 
        add index FKA0E6FE9168648EA5 (system_module_id), 
        add constraint FKA0E6FE9168648EA5 
        foreign key (system_module_id) 
        references t_system_module (system_module_id);

    alter table t_role_right 
        add index FK2A2639BE60A8966 (role_id), 
        add constraint FK2A2639BE60A8966 
        foreign key (role_id) 
        references t_role (role_id);

    alter table t_role_right 
        add index FK2A2639BE7589E64E (right_id), 
        add constraint FK2A2639BE7589E64E 
        foreign key (right_id) 
        references t_right (right_id);

    alter table t_user_service 
        add index FKAC52242CAB354D46 (user_id), 
        add constraint FKAC52242CAB354D46 
        foreign key (user_id) 
        references t_user (user_id);

    alter table t_user_service 
        add index FKAC52242CE377D90E (pricing_id), 
        add constraint FKAC52242CE377D90E 
        foreign key (pricing_id) 
        references t_pricing (pricing_id);





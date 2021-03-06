create sequence hibernate_sequence start 1 increment 1;

create table user_role (
    user_id int8 not null,
    roles varchar(255)
);

create table usr (
    id int8 not null,
    activation_code varchar(255),
    active boolean not null,
    email varchar(255),
    password varchar(255) not null,
    username varchar(255) not null,
    primary key (id)
);

create table target (
    id int8 not null,
    userid int8 not null,
    transactionid int8 not null,
    name varchar(255) not null,
    description varchar(255),
    cost int8 not null,
    createDate timestamp not null,
    expireDate timestamp not null,
    state varchar(17),
    primary key (id)
);

create table transactions (
    id int8 not null,
    targetid int8 not null,
    orgid int8 not null,
    cost int8 not null,
    primary key (id)
);

create table organisation (
    id int8 not null,
    name varchar(255) not null,
    url varchar(255),
    description varchar(255) not null,
    primary key (id)
);

alter table if exists user_role
    add constraint user_role_fk
    foreign key (user_id) references usr;
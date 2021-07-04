create table oauth_client_details
(
    client_id               varchar(128)  not null comment '客户端ID'
        primary key,
    resource_ids            varchar(256)  null comment '资源ID集合，多个资源时用英文逗号分隔',
    client_secret           varchar(256)  null comment '客户端密匙',
    scope                   varchar(256)  null comment '客户端申请的权限范围',
    authorized_grant_types  varchar(256)  null comment '客户端支持的grant_type 注：带有刷新令牌的要带上refresh_token',
    web_server_redirect_uri varchar(256)  null comment '重定向URI',
    authorities             varchar(256)  null comment '客户端所拥有的SpringSecurity的权限值，多个用英文逗号分隔',
    access_token_validity   int           null comment '访问令牌有效时间值(单位秒)',
    refresh_token_validity  int           null comment '更新令牌有效时间值(单位秒)',
    additional_information  varchar(4096) null comment '预留字段',
    autoapprove             varchar(256)  null comment '用户是否自动Approval操作'
)
    comment '客户端信息' charset = utf8;

INSERT INTO db_blog.oauth_client_details (client_id, resource_ids, client_secret, scope, authorized_grant_types, web_server_redirect_uri, authorities, access_token_validity, refresh_token_validity, additional_information, autoapprove) VALUES ('22', '22', '$2a$10$a4aQW/secQWvrZdYYDele.qrcsEc61iNJwWbj5hzwpoZhfbaY5mCu', '22', 'refresh_token', '22', null, 22, 22, '{''information'':22}', 'true');
INSERT INTO db_blog.oauth_client_details (client_id, resource_ids, client_secret, scope, authorized_grant_types, web_server_redirect_uri, authorities, access_token_validity, refresh_token_validity, additional_information, autoapprove) VALUES ('33', '33', '$2a$10$vsgz26s7m3i4hOheoK/a0eLi2GgFiky5fPbS.q09/qmpbWWQV0A4S', '33', 'refresh_token', '33', null, 33, 33, '{''information'':33}', 'true');
INSERT INTO db_blog.oauth_client_details (client_id, resource_ids, client_secret, scope, authorized_grant_types, web_server_redirect_uri, authorities, access_token_validity, refresh_token_validity, additional_information, autoapprove) VALUES ('44', '44', '$2a$10$gARPww75cbRgWucIumRkXeI1aYTfU7lpQkPYCA30WjPU0c5kvStRK', '44', 'refresh_token', '44', null, 44, 44, '{''information'':44}', 'true');
INSERT INTO db_blog.oauth_client_details (client_id, resource_ids, client_secret, scope, authorized_grant_types, web_server_redirect_uri, authorities, access_token_validity, refresh_token_validity, additional_information, autoapprove) VALUES ('55', '55', '$2a$10$MiNWw5tjiPGZdqvn8J/82eXZU.KFd2C4iwEmBRMfyiepcdL9yd/NG', '55', 'refresh_token', '55', null, 55, 55, '{''information'':55}', 'true');
INSERT INTO db_blog.oauth_client_details (client_id, resource_ids, client_secret, scope, authorized_grant_types, web_server_redirect_uri, authorities, access_token_validity, refresh_token_validity, additional_information, autoapprove) VALUES ('66', '66', '$2a$10$QSGXTPxmKNDWgF4QJqVmhOv03nm3sUwr90y4LAMm5NFwl2RV7fuUu', '66', 'refresh_token', '66', null, 66, 66, '{''information'':66}', 'true');
INSERT INTO db_blog.oauth_client_details (client_id, resource_ids, client_secret, scope, authorized_grant_types, web_server_redirect_uri, authorities, access_token_validity, refresh_token_validity, additional_information, autoapprove) VALUES ('77', '77', '$2a$10$01EvqKnzqNaPNVD1Qh0iteN31gQx12FYmY1K9tRaZ6V60sBhYZlwu', '77', 'refresh_token', '77', null, 77, 77, '{''information'':77}', 'true');
INSERT INTO db_blog.oauth_client_details (client_id, resource_ids, client_secret, scope, authorized_grant_types, web_server_redirect_uri, authorities, access_token_validity, refresh_token_validity, additional_information, autoapprove) VALUES ('88', '88', '$2a$10$zKZe7xI9wTMHGSgNA.XTgO.Gp22LQAPpk2LmaPvc.BH4cKxQ1HSOW', '88', 'refresh_token', '88', null, 88, 88, '{''information'':88}', 'true');
INSERT INTO db_blog.oauth_client_details (client_id, resource_ids, client_secret, scope, authorized_grant_types, web_server_redirect_uri, authorities, access_token_validity, refresh_token_validity, additional_information, autoapprove) VALUES ('99', '99', '$2a$10$k2cCucj27Ewrm0lTrg17fupBxIiZ3zwF/TL3PrMOUIYHpIX0OmQ4m', '99', 'refresh_token', '99', null, 99, 99, '{''information'':99}', 'true');
INSERT INTO db_blog.oauth_client_details (client_id, resource_ids, client_secret, scope, authorized_grant_types, web_server_redirect_uri, authorities, access_token_validity, refresh_token_validity, additional_information, autoapprove) VALUES ('c11', 'c11', '$2a$10$bKs3p3RcRdBQfjxyAx5Aq.KgTmez3bpjNJbwLGOa/.EIQWcBjQyny', 'all', 'authorization_code,refresh_token', 'http://www.baidu.com', null, 7200, 72000, '{''information'':授权码模式}', 'true');
INSERT INTO db_blog.oauth_client_details (client_id, resource_ids, client_secret, scope, authorized_grant_types, web_server_redirect_uri, authorities, access_token_validity, refresh_token_validity, additional_information, autoapprove) VALUES ('client', 'rs1', '$2a$10$Yj6zYRFrFE5G4NQ5D28m8OMKE1acc0RNK1SNfBYdZrfXdmJDzciYq', 'all', 'password,refresh_token', null, 'admin', 7200, 145000, '{''information'':测试}', 'true');
INSERT INTO db_blog.oauth_client_details (client_id, resource_ids, client_secret, scope, authorized_grant_types, web_server_redirect_uri, authorities, access_token_validity, refresh_token_validity, additional_information, autoapprove) VALUES ('client_manager', 'client_manager', '$2a$10$j0bYwkFLkJGeDWcVHIjY8Oxv9Topa9/24kgrhOKX9MA8V4SoR82cq', 'all', 'password,refresh_token', null, null, 7200, 172971, '{"information":"客户端管理"}', 'true');


create table oauth_code
(
    code           varchar(256) null comment '授权码(未加密)',
    authentication blob         null comment 'AuthorizationRequestHolder.java对象序列化后的二进制数据'
)
    comment '授权码' charset = utf8;



create table simple_user
(
    id               bigint auto_increment
        primary key,
    user_name        varchar(255)                                                                                                                                                                                                                                                                                        not null,
    user_password    varchar(255)                                                                                                                                                                                                                                                                                        not null,
    user_authorities varchar(255)  default 'normal'                                                                                                                                                                                                                                                                      null,
    user_nick        varchar(255)  default '游客'                                                                                                                                                                                                                                                                          null,
    user_img         varchar(2083) default 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201611%2F06%2F20161106173926_aeuwQ.jpeg&refer=http%3A%2F%2Fb-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1627890395&t=http://47.97.42.11/images/w2.jpg' null,
    gmt_create       datetime                                                                                                                                                                                                                                                                                            null,
    gmt_modified     datetime                                                                                                                                                                                                                                                                                            null,
    status           tinyint       default 0                                                                                                                                                                                                                                                                             null
);

INSERT INTO db_blog.simple_user (id, user_name, user_password, user_authorities, user_nick, user_img, gmt_create, gmt_modified, status) VALUES (1, 'admin', '$2a$10$yp49R.sFN3TF7Wadbgn2YellhxjIEixGKmzZDVLOIjuStmZ82edRK', 'admin,normal', '管理员', 'http://47.97.42.11/images/w9.jpg', '2021-07-02 15:16:56', '2021-07-02 15:16:56', 0);
INSERT INTO db_blog.simple_user (id, user_name, user_password, user_authorities, user_nick, user_img, gmt_create, gmt_modified, status) VALUES (2, 'user02', '$2a$10$QLxzhgepbGuZB17u/kOsbubuZluSdZhs1Bxxf/zOccMcAG7BgGJXe', 'normal', '游客', 'http://47.97.42.11/images/w2.jpg', '2021-07-02 15:20:38', '2021-07-02 15:20:38', 0);
INSERT INTO db_blog.simple_user (id, user_name, user_password, user_authorities, user_nick, user_img, gmt_create, gmt_modified, status) VALUES (3, '1234', '$2a$10$U0otnoqg03Ap4whDLf1a9OA5zSRVksts0vUKHgTSLvXEU6W6oDnVi', 'normal', '游客', 'http://47.97.42.11/images/w3.jpg', '2021-07-03 00:48:26', '2021-07-03 00:48:26', 0);
INSERT INTO db_blog.simple_user (id, user_name, user_password, user_authorities, user_nick, user_img, gmt_create, gmt_modified, status) VALUES (4, 'test03', '$2a$10$C/Ox9umB2WbhEWHKBu6wQOzqgPSLbj4sbQ./NGo86YYEhuupbo6a2', 'normal', '测试员3号', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201611%2F06%2F20161106173926_aeuwQ.jpeg&refer=http%3A%2F%2Fb-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1627890395&t=26c0ec9fcec7816d5948321f9d52ce56', '2021-07-03 15:56:39', '2021-07-03 15:56:39', 0);
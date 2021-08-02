-- user_info Table Create SQL
CREATE TABLE user_info
(
    user_id         VARCHAR2(30)     NOT NULL, 
    display_name    VARCHAR2(30)     NOT NULL, 
    user_name       VARCHAR2(30)     NOT NULL, 
    user_pw         VARCHAR2(30)     NOT NULL, 
    user_phone      VARCHAR2(20)     NOT NULL, 
    user_address    VARCHAR2(255)    NOT NULL, 
    have_dog        VARCHAR2(10)     NOT NULL, 
    cal_num         NUMBER           NOT NULL, 
    CONSTRAINT PK_blog_author PRIMARY KEY (user_id)
)

CREATE SEQUENCE user_info_SEQ
START WITH 1
INCREMENT BY 1;

select * from user_info;

-- drop table cascade constraints;

select * from user_info where user_id = 'kim'; 

-- community Table Create SQL
CREATE TABLE community
(
    post_num         NUMBER           NOT NULL, 
    post_like_num    NUMBER           NOT NULL, 
    user_id          VARCHAR2(30)     NOT NULL, 
    display_name     VARCHAR2(30)     NOT NULL, 
    post_sort        VARCHAR2(30)     NOT NULL, 
    post_title       VARCHAR2(127)    NOT NULL, 
    post_memo        VARCHAR2(4000)   NOT NULL, 
    post_photo       VARCHAR2(255)    NULL, 
    post_date        DATE             NOT NULL, 
    CONSTRAINT PK_community PRIMARY KEY (post_num)
)

CREATE SEQUENCE community_SEQ
START WITH 1
INCREMENT BY 1;

ALTER TABLE community
    ADD CONSTRAINT FK_community_user_id_user_info FOREIGN KEY (user_id)
        REFERENCES user_info (user_id)

select * from community;

drop table community cascade constraints;

-- like Table Create SQL
CREATE TABLE post_like
(
    post_like_num    NUMBER          NOT NULL, 
    post_num         NUMBER          NOT NULL, 
    user_id          VARCHAR2(30)    NOT NULL, 
    like_check       NUMBER          NULL, 
    hate_check       NUMBER          NULL, 
    CONSTRAINT PK_like PRIMARY KEY (post_like_num)
)

CREATE SEQUENCE post_like_SEQ
START WITH 1
INCREMENT BY 1;

ALTER TABLE post_like
    ADD CONSTRAINT FK_like_user_id_user_info_user FOREIGN KEY (user_id)
        REFERENCES user_info (user_id)

ALTER TABLE post_like
    ADD CONSTRAINT FK_like_post_num_community_pos FOREIGN KEY (post_num)
        REFERENCES community (post_num)

select * from post_like;

-- reply Table Create SQL
CREATE TABLE reply
(
    post_reply_num    NUMBER            NOT NULL, 
    post_num          NUMBER            NOT NULL, 
    user_id           VARCHAR2(30)      NOT NULL, 
    display_name      VARCHAR2(20)      NOT NULL, 
    reply_memo        VARCHAR2(1000)    NOT NULL, 
    post_date         DATE              NOT NULL, 
    CONSTRAINT PK_reply PRIMARY KEY (post_reply_num)
)        
        
CREATE SEQUENCE reply_SEQ
START WITH 1
INCREMENT BY 1;       
        
ALTER TABLE reply
    ADD CONSTRAINT FK_reply_post_num_community_po FOREIGN KEY (post_num)
        REFERENCES community (post_num)
        
ALTER TABLE reply
    ADD CONSTRAINT FK_reply_user_id_user_info_use FOREIGN KEY (user_id)
        REFERENCES user_info (user_id)  
        
select * from reply;
        
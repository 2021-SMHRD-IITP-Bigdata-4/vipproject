CREATE TABLE user_info
(
    user_id         VARCHAR2(30)     NOT NULL, 
    display_name    VARCHAR2(20)     NOT NULL, 
    user_name       VARCHAR2(20)     NOT NULL, 
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

-- DROP TABLE IF EXISTS T_KAKFA_USER;

CREATE TABLE IF NOT EXISTS T_KAFKA_USER
(
    ID IDENTITY NOT NULL COMMENT '主键ID',
    USERNAME VARCHAR(50) NOT NULL DEFAULT '' COMMENT '姓名',
    PASSWORD VARCHAR(50) NOT  NULL DEFAULT '' COMMENT '年龄',
    UPDATE_TIME TIMESTAMP NOT  NULL DEFAULT NOW() COMMENT '更新时间',
    PRIMARY KEY (ID),
    UNIQUE (USERNAME)
);

CREATE TABLE IF NOT EXISTS T_MIN_OFFSET_ALIGNMENT
(
    ID IDENTITY NOT NULL COMMENT '主键ID',
    GROUP_ID VARCHAR(128) NOT NULL DEFAULT '' COMMENT 'groupId',
    TOPIC VARCHAR(128) NOT  NULL DEFAULT '' COMMENT 'topic',
    THAT_OFFSET VARCHAR(512) NOT  NULL DEFAULT '' COMMENT 'min offset for that kafka cluster',
    THIS_OFFSET VARCHAR(512) NOT  NULL DEFAULT '' COMMENT 'min offset for this kafka cluster',
    UPDATE_TIME TIMESTAMP NOT  NULL DEFAULT NOW() COMMENT '更新时间',
    PRIMARY KEY (ID),
    UNIQUE (GROUP_ID, TOPIC)
);
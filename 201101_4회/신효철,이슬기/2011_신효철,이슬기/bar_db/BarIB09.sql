/*
 * ER/Studio Data Architect 9.0 SQL Code Generation
 * Project :      BarModel.DM1
 *
 * Date Created : 2011년 1월 25일 화요일 오후 2:21:50
 * Target DBMS : InterBase 2009
 */

/* 
 * TABLE: ADJUSTMENT_INFO 
 */

CREATE TABLE ADJUSTMENT_INFO(
    "open_date"     DATE             NOT NULL,
    "total_amount"  NUMERIC(8, 0)    NOT NULL,
    CONSTRAINT PK4 PRIMARY KEY ("open_date")
)
;



/* 
 * TABLE: FOOD_INFO 
 */

CREATE TABLE FOOD_INFO(
    "f_num"    CHAR(3)          NOT NULL,
    "f_name"   VARCHAR(50)      NOT NULL,
    "f_price"  NUMERIC(8, 0)    NOT NULL,
    CONSTRAINT PK3 PRIMARY KEY ("f_num")
)
;



/* 
 * TABLE: ORDER_INFO 
 */

CREATE TABLE ORDER_INFO(
    "seq_num"      NUMERIC(3, 0)    NOT NULL,
    "open_date"    DATE             NOT NULL,
    "slip_num"     NUMERIC(3, 0)    NOT NULL,
    "o_table_num"  NUMERIC(3, 0)    NOT NULL,
    "f_num"        CHAR(3)          NOT NULL,
    "count"        NUMERIC(3, 0)    NOT NULL,
    "o_time"       TIME             NOT NULL,
    CONSTRAINT PK1 PRIMARY KEY ("seq_num", "open_date", "slip_num")
)
;



/* 
 * TABLE: ORDER_SALES 
 */

CREATE TABLE ORDER_SALES(
    "open_date"  DATE             NOT NULL,
    "slip_num"   NUMERIC(3, 0)    NOT NULL,
    CONSTRAINT PK9 PRIMARY KEY ("open_date", "slip_num")
)
;



/* 
 * TABLE: "Reservation_INFO" 
 */

CREATE TABLE "Reservation_INFO"(
    "r_num"      NUMERIC(3, 0)    NOT NULL,
    "r_date"     DATE             NOT NULL,
    "r_time"     TIME             NOT NULL,
    "r_name"     VARCHAR(20)      NOT NULL,
    "r_contact"  VARCHAR(13)      NOT NULL,
    CONSTRAINT PK5 PRIMARY KEY ("r_num", "r_date")
)
;



/* 
 * TABLE: SALES_INFO 
 */

CREATE TABLE SALES_INFO(
    "open_date"  DATE             NOT NULL,
    "slip_num"   NUMERIC(3, 0)    NOT NULL,
    "s_sum"      NUMERIC(8, 0)    NOT NULL,
    "s_time"     TIME             NOT NULL,
    CONSTRAINT PK2 PRIMARY KEY ("open_date", "slip_num")
)
;



/* 
 * INDEX: "Ref329" 
 */

CREATE INDEX "Ref329" ON ORDER_INFO("f_num")
;
/* 
 * INDEX: "Ref931" 
 */

CREATE INDEX "Ref931" ON ORDER_INFO("slip_num", "open_date")
;
/* 
 * INDEX: "Ref933" 
 */

CREATE INDEX "Ref933" ON SALES_INFO("slip_num", "open_date")
;
/* 
 * TABLE: ORDER_INFO 
 */

ALTER TABLE ORDER_INFO ADD CONSTRAINT "RefFOOD_INFO291" 
    FOREIGN KEY ("f_num")
    REFERENCES FOOD_INFO("f_num")
;

ALTER TABLE ORDER_INFO ADD CONSTRAINT "RefORDER_SALES311" 
    FOREIGN KEY ("open_date", "slip_num")
    REFERENCES ORDER_SALES("open_date", "slip_num")
;


/* 
 * TABLE: SALES_INFO 
 */

ALTER TABLE SALES_INFO ADD CONSTRAINT "RefORDER_SALES331" 
    FOREIGN KEY ("open_date", "slip_num")
    REFERENCES ORDER_SALES("open_date", "slip_num")
;



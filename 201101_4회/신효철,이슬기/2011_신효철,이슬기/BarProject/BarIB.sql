/*
 * ER/Studio Data Architect 9.0 SQL Code Generation
 * Project :      BarModel2.DM1
 *
 * Date Created : 2011년 1월 28일 금요일 오전 1:37:40
 * Target DBMS : InterBase 2009
 */

/* 
 * TABLE: ADJUSTMENT_INFO 
 */

CREATE TABLE ADJUSTMENT_INFO(
    "open_date"     DATE       NOT NULL,
    "total_amount"  INTEGER    NOT NULL,
    CONSTRAINT PK_A PRIMARY KEY ("open_date")
)
;



/* 
 * TABLE: FOOD_INFO 
 */

CREATE TABLE FOOD_INFO(
    "f_num"       INTEGER        NOT NULL,
    "f_name"      VARCHAR(50)    NOT NULL,
    "f_price"     INTEGER        NOT NULL,
    "f_image"     BLOB,
    "f_datetime"  TIMESTAMP,
    CONSTRAINT PK_F PRIMARY KEY ("f_num")
)
;



/* 
 * TABLE: ORDER_INFO 
 */

CREATE TABLE ORDER_INFO(
    "open_date"  DATE       NOT NULL,
    "slip_num"   INTEGER    NOT NULL,
    "seq_num"    INTEGER    NOT NULL,
    "f_num"      INTEGER    NOT NULL,
    "count"      INTEGER    NOT NULL,
    "o_time"     TIME       NOT NULL,
    CONSTRAINT PK_O PRIMARY KEY ("open_date")
)
;



/* 
 * TABLE: ORDER_SALES 
 */

CREATE TABLE ORDER_SALES(
    "open_date"  DATE       NOT NULL,
    "slip_num"   INTEGER    NOT NULL,
    "table_num"  INTEGER    NOT NULL,
    CONSTRAINT PK_OS PRIMARY KEY ("open_date")
)
;



/* 
 * TABLE: RERV_INFO 
 */

CREATE TABLE RERV_INFO(
    "r_num"      INTEGER        NOT NULL,
    "r_date"     DATE           NOT NULL,
    "r_time"     TIME           NOT NULL,
    "r_name"     VARCHAR(20)    NOT NULL,
    "r_phone"    VARCHAR(13)    NOT NULL,
    "r_memo"     VARCHAR(50),
    "r_remarks"  CHAR(5),
    CONSTRAINT PK_R PRIMARY KEY ("r_num")
)
;



/* 
 * TABLE: SALES_INFO 
 */

CREATE TABLE SALES_INFO(
    "open_date"  DATE       NOT NULL,
    "s_sum"      INTEGER    NOT NULL,
    "s_time"     TIME       NOT NULL,
    CONSTRAINT PK_S PRIMARY KEY ("open_date")
)
;



/* 
 * INDEX: AK_O 
 */

CREATE UNIQUE INDEX AK_O ON ORDER_INFO("open_date", "slip_num", "seq_num")
;
/* 
 * INDEX: "Ref329" 
 */

CREATE INDEX "Ref329" ON ORDER_INFO("f_num")
;
/* 
 * INDEX: "Ref931" 
 */

CREATE INDEX "Ref931" ON ORDER_INFO("open_date")
;
/* 
 * INDEX: AK_OS 
 */

CREATE UNIQUE INDEX AK_OS ON ORDER_SALES("slip_num", "open_date")
;
/* 
 * INDEX: AK_R 
 */

CREATE UNIQUE INDEX AK_R ON RERV_INFO("r_date")
;
/* 
 * INDEX: "Ref933" 
 */

CREATE INDEX "Ref933" ON SALES_INFO("open_date")
;
/* 
 * TABLE: ORDER_INFO 
 */

ALTER TABLE ORDER_INFO ADD CONSTRAINT "RefFOOD_INFO29" 
    FOREIGN KEY ("f_num")
    REFERENCES FOOD_INFO("f_num")
;

ALTER TABLE ORDER_INFO ADD CONSTRAINT "RefORDER_SALES31" 
    FOREIGN KEY ("open_date")
    REFERENCES ORDER_SALES("open_date")
;


/* 
 * TABLE: SALES_INFO 
 */

ALTER TABLE SALES_INFO ADD CONSTRAINT "RefORDER_SALES33" 
    FOREIGN KEY ("open_date")
    REFERENCES ORDER_SALES("open_date")
;



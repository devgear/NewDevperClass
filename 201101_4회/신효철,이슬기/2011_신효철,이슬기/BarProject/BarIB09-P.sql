/*
 * ER/Studio Data Architect 9.0 SQL Code Generation
 * Project :      BarModel.DM1
 *
 * Date Created : 2011년 1월 27일 목요일 오후 3:07:48
 * Target DBMS : InterBase 2009
 */

/* 
 * TABLE: ADJUSTMENT_INFO 
 */

CREATE TABLE ADJUSTMENT_INFO(
    "o_date"        TIMESTAMP        NOT NULL,
    "total_amount"  NUMERIC(8, 0)    NOT NULL,
    CONSTRAINT PK_AD PRIMARY KEY ("o_date")
)
;



/* 
 * TABLE: FOOD_INFO 
 */

CREATE TABLE FOOD_INFO(
    "f_num"       CHAR(3)          NOT NULL,
    "f_name"      VARCHAR(50)      NOT NULL,
    "f_price"     NUMERIC(8, 0)    NOT NULL,
    "f_image"     BLOB,
    "f_datetime"  TIMESTAMP,
    CONSTRAINT PK_FD PRIMARY KEY ("f_num")
)
;



/* 
 * TABLE: ORDER_INFO 
 */

CREATE TABLE ORDER_INFO(
    "seq_num"    NUMERIC(3, 0)    NOT NULL,
    "o_date"     DATE             NOT NULL,
    "slip_num"   NUMERIC(3, 0)    NOT NULL,
    "table_num"  NUMERIC(3, 0)    NOT NULL,
    "f_num"      CHAR(3)          NOT NULL,
    "count"      NUMERIC(3, 0)    NOT NULL,
    "o_time"     TIME             NOT NULL,
    CONSTRAINT PK_OD PRIMARY KEY ("o_date")
)
;



/* 
 * TABLE: ORDER_SALES 
 */

CREATE TABLE ORDER_SALE(
    "o_date"     DATE             NOT NULL,
    "slip_num"   NUMERIC(3, 0)    NOT NULL,
    "table_num"  NUMERIC(3, 0)    NOT NULL,
    CONSTRAINT PK_OS PRIMARY KEY ("o_date")   
)
;



/* 
 * TABLE: "Reservation_INFO" 
 */

CREATE TABLE Reservation_INFO(
    "r_num"      NUMERIC(3, 0)    NOT NULL,
    "r_date"     DATE             NOT NULL,
    "r_time"     TIME             NOT NULL,
    "r_name"     VARCHAR(20)      NOT NULL,
    "r_phone"    VARCHAR(13)      NOT NULL,
    "r_memo"     VARCHAR(50),
    "r_remarks"  CHAR(5),
    CONSTRAINT PK_RS PRIMARY KEY ("r_num")
)
;



/* 
 * TABLE: SALES_INFO 
 */

CREATE TABLE SALES_INFO(
    "o_date"     DATE             NOT NULL,
    "slip_num"   NUMERIC(3, 0)    NOT NULL,
    "table_num"  NUMERIC(3, 0)    NOT NULL,
    "s_sum"      NUMERIC(8, 0)    NOT NULL,
    "s_time"     TIME             NOT NULL,
    CONSTRAINT PK_SL PRIMARY KEY ("o_date")
)
;



/* 
 * INDEX: "Ref329" 
 */

CREATE INDEX "Idx_Food" ON ORDER_INFO("f_num")
;
/* 
 * INDEX: "Ref931" 
 */

CREATE INDEX "Idx_Order" ON ORDER_INFO("slip_num", "o_date", "table_num")
;
/* 
 * INDEX: "Ref933" 
 */

CREATE INDEX "Idx_Sales" ON SALES_INFO("slip_num", "table_num", "o_date")
;
/* 
 * TABLE: ORDER_INFO 
 */





ALTER TABLE ORDER_INFO ADD CONSTRAINT "Ref_FD" 
    FOREIGN KEY ("f_num")
    REFERENCES FOOD_INFO("f_num")
;



/*ALTER TABLE ORDER_INFO ADD CONSTRAINT "RefORDER_SALES31" 
 *    FOREIGN KEY ("o_date", "slip_num", "table_num")
 *    REFERENCES ORDER_SALES("o_date", "slip_num", "table_num")
 */;


/* 
 * TABLE: SALES_INFO 
 */


 /*ALTER TABLE SALES_INFO ADD CONSTRAINT "RefORDER_SALES33" 
  *   FOREIGN KEY ("o_date", "slip_num", "table_num")
 *    REFERENCES ORDER_SALES("o_date", "slip_num", "table_num")
; */



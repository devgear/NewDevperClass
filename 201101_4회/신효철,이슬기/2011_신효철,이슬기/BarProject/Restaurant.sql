/*
 * ER/Studio Data Architect 9.0 SQL Code Generation
 * Project :      BarModel2.DM1
 *
 * Date Created : 2011년 1월 28일 금요일 오후 2:47:33
 * Target DBMS : InterBase 2009
 */

/* 
 * TABLE: ADJUSTMENT_INFO 
 */

CREATE TABLE ADJUSTMENT_INFO(
    "open_date"     DATE       NOT NULL,
    "total_amount"  INTEGER    NOT NULL,
    PRIMARY KEY ("open_date")
)
;



/* 
 * TABLE: FOOD_INFO 
 */

CREATE TABLE FOOD_INFO(
    "f_num"    INTEGER        NOT NULL,
	"f_name" 
    "f_price"  INTEGER        NOT NULL,
    "f_image"  BLOB,
    "f_date"   DATE,
"f_check"
    PRIMARY KEY ("f_num")
)
;


CREATE TABLE ORDER_SALES(
    "os_num"     INTEGER    NOT NULL,
    "slip_num"   INTEGER    NOT NULL,
    "open_date"  DATE       NOT NULL,
    PRIMARY KEY ("os_num")
)
;

/* 
 * TABLE: ORDER_INFO 
 */

CREATE TABLE ORDER_INFO(
    "o_num"      INTEGER        NOT NULL,
    "open_date"  DATE           NOT NULL,
    "slip_num"   INTEGER        NOT NULL,
    "table_num"  INTEGER,
    "f_num"      INTEGER        NOT NULL,
    "count"      INTEGER        NOT NULL,
    "o_time"     VARCHAR(12)    NOT NULL,
    "os_num"     INTEGER        NOT NULL,
    PRIMARY KEY ("o_num"),
    FOREIGN KEY ("os_num") REFERENCES ORDER_SALES("os_num"),
    FOREIGN KEY ("f_num") REFERENCES FOOD_INFO("f_num")
)
;



/* 
 * TABLE: ORDER_SALES 
 */




/* 
 * TABLE: RERV_INFO 
 */

CREATE TABLE RERV_INFO(
    "r_num"      INTEGER        NOT NULL,
    "r_date"     DATE           NOT NULL,
    "r_time"     VARCHAR(12)    NOT NULL,
    "r_name"     VARCHAR(20)    NOT NULL,
    "r_phone"    VARCHAR(13)    NOT NULL,
    "r_memo"     VARCHAR(50),
    "r_remarks"  CHAR(5),
    PRIMARY KEY ("r_num")
)
;



/* 
 * TABLE: SALES_INFO 
 */

CREATE TABLE SALES_INFO(
    "s_num"      INTEGER        NOT NULL,
    "open_date"  DATE           NOT NULL,
    "slip_num"   INTEGER        NOT NULL,
    "table_num"  INTEGER        NOT NULL,
    "s_sum"      INTEGER        NOT NULL,
    "s_time"     VARCHAR(12)    NOT NULL,
    "os_num"     INTEGER        NOT NULL,
    PRIMARY KEY ("s_num"),
    FOREIGN KEY ("os_num") REFERENCES ORDER_SALES("os_num")
)
;



CREATE TABLE ADJUSTMENT_INFO(
    "open_date"     DATE       NOT NULL,
    "total_amount"  INTEGER    NOT NULL,
    CONSTRAINT PK_A PRIMARY KEY ("open_date")
)
;


CREATE TABLE FOOD_INFO(
    "f_num"       INTEGER        NOT NULL,
    "f_name"      VARCHAR(50)    NOT NULL,
    "f_price"     INTEGER        NOT NULL,
    "f_image"     BLOB,
    "f_datetime"  TIMESTAMP,
    CONSTRAINT PK_F PRIMARY KEY ("f_num")
)
;

CREATE TABLE ORDER_SALES(
    "os_num"     INTEGER    NOT NULL,		
    "open_date"  DATE       NOT NULL,
    "slip_num"   INTEGER    NOT NULL,
    "table_num"  INTEGER    NOT NULL,
    CONSTRAINT PK_OS PRIMARY KEY ("os_num")
)
;


CREATE TABLE ORDER_INFO(
    "o_num"      INTEGER    NOT NULL,
    "open_date"  DATE       NOT NULL,
    "slip_num"   INTEGER    NOT NULL,
    "table_num"  INTEGER    NOT NULL,
    "f_num"      INTEGER    NOT NULL,
    "count"      INTEGER    NOT NULL,
    "o_time"     VARCHAR    NOT NULL,
    CONSTRAINT PK_O PRIMARY KEY ("o_num")
)
;




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


CREATE TABLE SALES_INFO(
    "s_num"      INTEGER    NOT NULL,
    "slip_num"   INTEGER    NOT NULL,
    "open_date"  DATE       NOT NULL,
    "table_num"  INTEGER    NOT NULL,
    "s_sum"      INTEGER    NOT NULL,
    "s_time"     TIME       NOT NULL,
    CONSTRAINT PK_S PRIMARY KEY ("s_num")
)
;



ALTER TABLE ORDER_INFO ADD CONSTRAINT "RefFOOD_INF" 
    FOREIGN KEY ("f_num")
    REFERENCES FOOD_INFO("f_num")
;


ALTER TABLE ORDER_INFO ADD CONSTRAINT "RefORDER_SALES" 
    FOREIGN KEY ("slip_num")
    REFERENCES ORDER_SALES("slip_num")
;



ALTER TABLE SALES_INFO ADD CONSTRAINT "RefORDER_SALES33" 
    FOREIGN KEY ("slip_num")
    REFERENCES ORDER_SALES("slip_num")
;



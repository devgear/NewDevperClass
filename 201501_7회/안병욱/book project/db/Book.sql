/*
 * ER/Studio Data Architect 10.0 SQL Code Generation
 * Project :      Book.DM1
 *
 * Date Created : 2015년 1월 27일 화요일 오전 11:20:23
 * Target DBMS : InterBase XE3
 */

/* 
 * TABLE: "book" 
 */

CREATE TABLE "book"(
    "BookNum"      INTEGER        NOT NULL,
    "RegDay"       DATE,
    "BookName"     VARCHAR(60),
    "Author"       VARCHAR(40),
    "Category"     VARCHAR(20),
    "Publish"      VARCHAR(20),
    "PublishYear"  VARCHAR(10),
    "BookImage"    BLOB,
    CONSTRAINT PK1 PRIMARY KEY ("BookNum")
)
;



/* 
 * TABLE: "booking" 
 */

CREATE TABLE "booking"(
    "BookingNum"   INTEGER    NOT NULL,
    "BookingName"  VARCHAR(50),
    "BookingDate"  DATE,
    "BookNum"      INTEGER        NOT NULL,
    ID             VARCHAR(20)    NOT NULL,
    CONSTRAINT PK5 PRIMARY KEY ("BookingNum")
)
;



/* 
 * TABLE: "member" 
 */

CREATE TABLE "member"(
    ID         VARCHAR(20)    NOT NULL,
    "Jumin"    VARCHAR(30),
    "Name"     VARCHAR(30),
    "Age"      VARCHAR(18),
    "Phone"    VARCHAR(20),
    "Address"  VARCHAR(40),
    CONSTRAINT PK4 PRIMARY KEY (ID)
)
;



/* 
 * TABLE: "rental" 
 */

CREATE TABLE "rental"(
    "RentalNum"  INTEGER    NOT NULL,
    "RentalDay"  DATE,
    ID           VARCHAR(20)    NOT NULL,
    CONSTRAINT PK2 PRIMARY KEY ("RentalNum")
)
;



/* 
 * TABLE: "rentalbook" 
 */

CREATE TABLE "rentalbook"(
    "RentalBookNum"  INTEGER    NOT NULL,
    "Period"         VARCHAR(30),
    "Return"         DATE,
    "RentalNum"      INTEGER    NOT NULL,
    "BookNum"        INTEGER        NOT NULL,
    CONSTRAINT PK3 PRIMARY KEY ("RentalBookNum")
)
;



/* 
 * TABLE: "booking" 
 */

ALTER TABLE "booking" ADD CONSTRAINT "Refbook251" 
    FOREIGN KEY ("BookNum")
    REFERENCES "book"("BookNum")
;

ALTER TABLE "booking" ADD CONSTRAINT "Refmember261" 
    FOREIGN KEY (ID)
    REFERENCES "member"(ID)
;


/* 
 * TABLE: "rental" 
 */

ALTER TABLE "rental" ADD CONSTRAINT "Refmember271" 
    FOREIGN KEY (ID)
    REFERENCES "member"(ID)
;


/* 
 * TABLE: "rentalbook" 
 */

ALTER TABLE "rentalbook" ADD CONSTRAINT "Refrental221" 
    FOREIGN KEY ("RentalNum")
    REFERENCES "rental"("RentalNum")
;

ALTER TABLE "rentalbook" ADD CONSTRAINT "Refbook231" 
    FOREIGN KEY ("BookNum")
    REFERENCES "book"("BookNum")
;



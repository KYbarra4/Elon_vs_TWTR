-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/5ovf8g
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "twtr_stock" (
    "Date" DATE   NOT NULL,
    "Open" VARCHAR(30)   NOT NULL,
    "High" DECIMAN(7)   NOT NULL,
    "Low" DECIMAN(7)   NOT NULL,
    "Close" (7)   NOT NULL,
    "Volume" Integer(9)   NOT NULL,
    "Dividends" INTEGER(5)   NOT NULL,
    "Splits" INTEGER(5)   NOT NULL,
    CONSTRAINT "pk_twtr_all" PRIMARY KEY (
        "Date"
     )
);

CREATE TABLE "twtr_dates" (
    "Date" DATE   NOT NULL,
    "News_Header" VARCHAR(100)   NOT NULL,
    "Description" VARCHAR(1000)   NOT NULL
);

ALTER TABLE "twtr_dates" ADD CONSTRAINT "fk_twtr_dates_Date" FOREIGN KEY("Date")
REFERENCES "twtr_all" ("Date");


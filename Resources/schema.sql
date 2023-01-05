-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/5ovf8g
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "twtr_all" (
    "Date" DATE   NOT NULL,
    "Open" DECIMAL(7)   NOT NULL,
    "High" DECIMAL(7)   NOT NULL,
    "Low" DECIMAL(7)   NOT NULL,
    "Close" DECIMAL(7)   NOT NULL,
    "Volume" INTEGER   NOT NULL,
    CONSTRAINT "pk_twtr_all" PRIMARY KEY (
        "Date"
     )
);

CREATE TABLE "twtr_dates" (
    "Date" DATE   NOT NULL,
    "Headline" VARCHAR(100)   NOT NULL
);

ALTER TABLE "twtr_dates" ADD CONSTRAINT "fk_twtr_dates_Date" FOREIGN KEY("Date")
REFERENCES "twtr_all" ("Date");


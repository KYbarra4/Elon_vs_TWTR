# Elon Headlines and Twitter Stock Price
Project 2

Group 18 will utilize a yfinance API call to gather data for twitter stock dating from inception until Elon purchased twitter. We will web scrape a timeline from CNN to see how Elon's tweets/headlines affected the stock price on specific days in 2022 and enter it into a SQL database and retreive the results.

## Primary Source - YFinance API Call

![twtr_api_yfinance](https://user-images.githubusercontent.com/113717031/209484049-e36d6ab7-3773-498a-bfa5-06e7bcc819b0.png)

## Secondary Source - Web Scrape of CNN Website

![twtr_cnn](https://user-images.githubusercontent.com/113717031/209484079-3045a7ac-c97e-4ce9-8c97-4a2871cd1913.png)

## Data Cleaning

Imported all data from 2013 to point of sale in Oct. 2022. Date cleaning for better reading.

Start

![stock_data_start](https://user-images.githubusercontent.com/113717031/209484105-2efe4a43-7c47-44e3-8785-57cb66098fe1.png)

End

![Stock_date_end](https://user-images.githubusercontent.com/113717031/209484172-6cf6aa79-7956-4346-9ef9-d49c4f5bd312.png)

Scrapped the CNN website for all headers under the 'h2' class of subheader, copied the dates into a new column, added the year 2022, cleaned unneeded characters, and cleaned up spacing.

Start

![headlines_start](https://user-images.githubusercontent.com/113717031/209484202-918c2dd0-9d7c-4395-8de8-efbeadde51b3.png)

End

![headlines_end](https://user-images.githubusercontent.com/113717031/209484204-2bb83d73-9f64-44fd-b20d-b5d63bba35cd.png)

## Schema

Table Schemas for a pgAdmin integration

![schema_psg](https://user-images.githubusercontent.com/113717031/209484256-b59e1efe-1b7a-4ed6-b49e-886948652bc8.png)

![table_schema](https://user-images.githubusercontent.com/113717031/209484258-36ac6b99-0728-468a-9916-cca137301e60.png)

## Host Connection

![host](https://user-images.githubusercontent.com/113717031/209484281-fb7b14de-613c-4944-a3f8-eac99189af50.png)

## ETL Connection

Minor Cleaning to gather only the columns we will be using

![sql_clean](https://user-images.githubusercontent.com/113717031/209484338-d5d71abe-fee9-43a9-b433-3ab3477729d8.png)

Importing data into tables

![sql_tables_python](https://user-images.githubusercontent.com/113717031/209484350-821abe16-95c4-4f23-b85c-6b6807647ee4.png)

## pgAdmin Tables

![twtr_all_psg](https://user-images.githubusercontent.com/113717031/209484538-4e28068e-3515-4d19-b3b6-ad257f2c9d82.png)

![twtr_dates_psg](https://user-images.githubusercontent.com/113717031/209484539-e599ee1e-96b8-4dc1-a015-c5a03d5bb4e2.png)

## Final Query

Queries to look at all data along with a final query shown below

![twtr_psg_query](https://user-images.githubusercontent.com/113717031/209578670-47261593-08c1-4b73-9ac1-51041dd0149e.png)

## SQLAlchemy

![twtr_python_query](https://user-images.githubusercontent.com/113717031/209579401-19b70190-d638-4d54-87a3-8a619b531aaa.png)

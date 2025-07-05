Azure Data Factory – Copy All Tables from One SQL Database to Another

This is a dynamic ADF project I built to learn how full database replication works using parameterized datasets and pipelines. The pipeline reads all table names from the source database and copies their data into the destination database automatically.
It helped me understand how to use Lookup, ForEach, and Copy activities to migrate data dynamically from multiple tables without hardcoding anything.
________________________________________
 Project Summary:

• Pipeline Name: CopyAllTablesPipeline

• Source Database: Source_DB (manually created with Customer, Orders tables)

• Destination Database: Destination_DB (empty, created to receive copied data)

• Activities Used:

•	Lookup (to fetch table names)

•	ForEach (to loop through table list)


•	Copy Data (to copy each table dynamically)

• Parameterization: Used @item().TABLE_NAME and @dataset().TableName in datasets
________________________________________
 What I Used

• Azure Data Factory V2

• Azure SQL Database (Source and Destination)

• Query Editor (Preview) to create tables and validate data

• GitHub (to document and store exported files and screenshots)
________________________________________
Errors I Faced and How I Solved Them:

1.	ForEach Loop Failed (No Table Created in Destination)

– Error: "Invalid object name ‘Orders’"

– Fix: Manually created the same tables (Customer, Orders) in the destination DB using Query Editor.

2.	Lookup Didn’t Return Data

– I selected a dataset instead of using inline query

– Fix: Changed to use a query directly in the Lookup settings

3.	Dynamic Dataset Not Picking Table Name

– Forgot to set dataset parameters

– Fix: Added parameter TableName and passed @item().TABLE_NAME from ForEach
________________________________________
Output Verification:
• Verified the output by running:

SELECT * FROM Customer;
SELECT * FROM Orders;

• Data matched between source and destination

• Screenshots of the debug output and SQL query results are added in the screenshots/ folder
________________________________________
What I Learned:

• How to build fully dynamic ADF pipelines using parameterized datasets

• How to loop through table metadata and copy without hardcoding

• How to troubleshoot pipeline failures (sink errors, query errors)

• How to document Azure projects for GitHub submission
________________________________________
 Author:

Samiksha Kharche



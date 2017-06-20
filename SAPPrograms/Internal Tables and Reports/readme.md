# Exercices of Internal Tables and Reports
1) Create an internal table taking all the fields from BKPF and display fields Company code, Document number, Document type and date of document.
2) Create an internal table taking fields’ Company code, Document number, Account type and Tax code from table BSEG and display the same with column headings.
3) Create an internal table with following fields:
       Sales Document and Material from table VBAP.
       Date, Name of the user and sales document type from table VBAK and
       Price group and customer group from table VBKD.
       Sort the table according to Material number and display the contents.
4) Determine for each material type (MTART) the 5 table entries with the highest gross weight (as a ranked list).
To do this, read the table MARA and store the material type (MTART), material number (MATNR), unit of measure (MEINS) and gross weight (BRGEW) into an internal table.
Allow the user to specify the Material type as a parameter on the selection screen.
5.	Create a list of the maximum number of available seats for each carrier. To do this, read the table SFLIGHT and store the airline carrier id (CARRID) and maximum number of seats (SEATSMAX) in an internal table. Determine the total number of seats for each airline carrier when filing the int’ table.

6.	Read the table SFLIGHT into an internal table and then output the internal table with the fields CARRID, FLDATE and PRICE.
Delete all the internal table entries where the airline carrier (CARRID) is not equal to LH. Read the internal table with entry with the key CARRID = LH and CONNID = 0400, multiply the price by 3 and write the modified entry back to the internal table. Then Output the internal table.

7.	Use tables LFA1, LFB1 and LFM1.
Define an internal table with the following:
Lifnr like Lfa1-lifnr,
Bukrs like Lfb1-bukrs,
Ekorg like Lfm1-ekorg.
Add data from these table into the internal tables.
Sort the internal table Lifnr.
Read the internal table with Lifnr = ‘A5’ and change name to trainee.
Put back the record into the table.
Delete first three records of internal table.
Clear header for internal table each time you access a record.

8.	Create a report, which will give the existing stock for a material. The report should have subtotal of the stock for each storage location and Grand total of the stock at the end of the plant.
Plant data should start at new page.
Input: Selection screen which will allow one to select a range of materials.
Materials:
Output Report format as follows:

Plant Storage location Material number Description Stock
(unrestricted)


Grand total * * * * * *


Tables and fields:
Material Number MARA-MATNR
Description MAKT-MAKTX
Plant MARC-WERKS
Storage location MARD-LGORT
Stock MARD-LABST
Use Standard Formatting colors.
Exception handling:
Error message “ Material not found “ – if Material not present.

9.	Generate a report to list the following details from the tables LFA1 & LFB1 vendor no., vendor name, city, state, telephone no., fax no., company code and terms of payment. User shall have options to select the vendor number range for which the report is generated.
.

Report title: Vendor Master Listing 2
Vendor Name: _____________ Vendor no. : _____________
Address: __________________
Telephone no. _______________ Fax no : ______________
Company code Terms of payments
_____________ _________________

All text used in the report shall be generated using text elements only.
The output list shall have a footer showing page no., date and Intelligroup’(left corner)

10.	Generate a report for displaying material description, plant & storage data.
Input: Material number (MARA-MATNR)
Data to be displayed for the following three materials only.
1. BP770M15
2. FP56790031
3. FP28652011

Output format:
11/11/1998 Report to analyze material stocks
Material No. Description
FP96412101 Meditech Patterned Weld Rod
Oatmeal 60’
Plant Storage Loc. Unrestricted stock
xxxx xxxxxxxxxxx xxxxxxxxxxxxxxx

All texts are to be generated using Text Elements only.
Use tables: MARA, MAKT, MARC and MARD.


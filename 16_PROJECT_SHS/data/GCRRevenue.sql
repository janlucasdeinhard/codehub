SELECT 
"ACCOUNT_ID",
"ACCOUNT_ID (Payer)",
"ACCOUNT_ID (ShipTo)",
"ACCOUNT_ID (SoldTo)",
"Business Area",
"Business Line",
"Business Type",
"Cross Div. Business",
"Diagnostic Parameter",
"Disease State",
"FY",
"FY Period",
"GCR Reporting Date",
"ISO",
"Product Line",
"Product/Global Material Number",
"Sales Document Number HQ",
"Sales Document Number RC",
"Ship-to ID (SAP)",
"Sold-to ID (SAP)",
SUM("New Orders Outside Healthcare (GC PY Comparable)") AS "New Orders Outside Healthcare (GC PY Comparable)",
SUM("New Orders Outside Healthcare (GC)") AS "New Orders Outside Healthcare (GC)",
SUM("Revenue Outside Healthcare (GC PY Comparable)") AS "Revenue Outside Healthcare (GC PY Comparable)",
SUM("Revenue Outside Healthcare (GC)") AS "Revenue Outside Healthcare (GC)"
FROM CRMCL_TOPICAREA.GCR."Revenue_New_Orders" 
WHERE "ACCOUNT_ID" IN (
{0}
)
GROUP BY 
"ACCOUNT_ID",
"ACCOUNT_ID (Payer)",
"ACCOUNT_ID (ShipTo)",
"ACCOUNT_ID (SoldTo)",
"Business Area",
"Business Line",
"Business Type",
"Cross Div. Business",
"Diagnostic Parameter",
"Disease State",
"FY",
"FY Period",
"GCR Reporting Date",
"ISO",
"Product Line",
"Product/Global Material Number",
"Sales Document Number HQ",
"Sales Document Number RC",
"Ship-to ID (SAP)",
"Sold-to ID (SAP)"
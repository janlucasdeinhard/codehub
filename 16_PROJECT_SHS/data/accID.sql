SELECT DISTINCT "ACCOUNT_ID" 
FROM CRMCL_TOPICAREA.OSC."Accounts" 
WHERE "ACCOUNT_ID (MainAccount)" IN (
SELECT DISTINCT TOP {0} "ACCOUNT_ID (MainAccount)" 
FROM CRMCL_TOPICAREA.OSC."Accounts" WHERE "CKAP (Flag)" ='Y'
)
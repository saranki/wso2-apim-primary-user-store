# AM_DB Update Queries
-----------------------

# 1. IDN_CLAIM_MAPPED_ATTRIBUTE 
# Replace the USER_STORE_DOMAIN_NAME from "TEST" to "PRIMARY"
UPDATE `WSO2AM_DB`.`IDN_CLAIM_MAPPED_ATTRIBUTE` SET `USER_STORE_DOMAIN_NAME`=REPLACE(`USER_STORE_DOMAIN_NAME`,'TEST','PRIMARY');


# 2. AM_API
# Remove "TEST" prefix from API_PROVIDER, CREATED_BY and UPDATED_BY columns
UPDATE `WSO2AM_DB`.`AM_API` SET `API_PROVIDER`=REPLACE(`API_PROVIDER`,'TEST/',''), `CREATED_BY`=REPLACE(`CREATED_BY`,'TEST/',''), `UPDATED_BY`=REPLACE(`UPDATED_BY`,'TEST/','');


# 3. AM_API_LC_EVENT 
# Remove "TEST" prefix from the USER_ID column
UPDATE `WSO2AM_DB`.`AM_API_LC_EVENT` SET `USER_ID`=REPLACE(`USER_ID`,'TEST/','');


# 4. AM_APPLICATION 
# Remove "TEST" prefix from CREATED_BY and UPDATED_BY columns
UPDATE `WSO2AM_DB`.`AM_APPLICATION` SET `CREATED_BY`=REPLACE(`CREATED_BY`,'TEST/',''), `UPDATED_BY`=REPLACE(`UPDATED_BY`,'TEST/','');


# 5. AM_SUBSCRIBER
# Remove "TEST" prefix from USER_ID, CREATED_BY, and UPDATED_BY columns
UPDATE `WSO2AM_DB`.`AM_SUBSCRIBER` SET `USER_ID`=REPLACE(`USER_ID`,'TEST/',''), `CREATED_BY`=REPLACE(`CREATED_BY`,'TEST/',''), `UPDATED_BY`=REPLACE(`UPDATED_BY`,'TEST/','');


# 6. AM_SUBSCRIPTION
# Remove "TEST" prefix from CREATED_BY and UPDATED_BY columns
UPDATE `WSO2AM_DB`.`AM_SUBSCRIPTION` SET `CREATED_BY`=REPLACE(`CREATED_BY`,'TEST/',''), `UPDATED_BY`=REPLACE(`UPDATED_BY`,'TEST/','');


# 7. IDN_OAUTH2_ACCESS_TOKEN
# Replace the USER_DOMAIN from "TEST" to "PRIMARY"
UPDATE `WSO2AM_DB`.`IDN_OAUTH2_ACCESS_TOKEN` SET `USER_DOMAIN`=REPLACE(`USER_DOMAIN`,'TEST','PRIMARY');


# 8. IDN_OAUTH2_ACCESS_TOKEN_AUDIT
# Replace the USER_DOMAIN from "TEST" to "PRIMARY"
UPDATE `WSO2AM_DB`.`IDN_OAUTH2_ACCESS_TOKEN_AUDIT` SET `USER_DOMAIN`=REPLACE(`USER_DOMAIN`,'TEST','PRIMARY');


# 9. IDN_OAUTH2_AUTHORIZATION_CODE
# Replace the USER_DOMAIN from "TEST" to "PRIMARY"
UPDATE `WSO2AM_DB`.`IDN_OAUTH2_AUTHORIZATION_CODE` SET `USER_DOMAIN`=REPLACE(`USER_DOMAIN`,'TEST','PRIMARY');


# 10. IDN_OAUTH_CONSUMER_APPS 
# Replace the USER_DOMAIN from "TEST" to "PRIMARY" and remove "TEST" prefix from APP_NAME column
UPDATE `WSO2AM_DB`.`IDN_OAUTH_CONSUMER_APPS` SET `USER_DOMAIN`=REPLACE(`USER_DOMAIN`,'TEST','PRIMARY'), `APP_NAME`=REPLACE(`APP_NAME`,'TEST_','');


# 11. SP_APP 
# Replace the USER_STORE from "TEST" to "PRIMARY" and remove "TEST" prefix from APP_NAME and DESCRIPTION columns
UPDATE `WSO2AM_DB`.`SP_APP` SET `USER_STORE`=REPLACE(`USER_STORE`,'TEST','PRIMARY'), `APP_NAME`=REPLACE(`APP_NAME`,'TEST_',''), `DESCRIPTION`=REPLACE(`DESCRIPTION`,'TEST_','');
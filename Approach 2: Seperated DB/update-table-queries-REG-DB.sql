# REG_DB Update Queries
-----------------------

# 1. REG_RESOURCE
# Remove "TEST" prefix from REG_CREATOR and REG_LAST_UPDATOR columns
SELECT * FROM REG_RESOURCE WHERE REG_CREATOR LIKE 'TEST%' AND REG_LAST_UPDATOR LIKE 'TEST%';
UPDATE `WSO2REG_DB`.`REG_RESOURCE` SET `REG_CREATOR`=REPLACE(`REG_CREATOR`,'TEST/',''), `REG_LAST_UPDATOR`=REPLACE(`REG_LAST_UPDATOR`,'TEST/','');


# 2. REG_LOG
# Remove "TEST" prefix from REG_USER_ID column
SELECT * FROM REG_LOG WHERE REG_USER_ID LIKE 'TEST%';
UPDATE `WSO2REG_DB`.`REG_LOG` SET `REG_USER_ID`=REPLACE(`REG_USER_ID`,'TEST/','');

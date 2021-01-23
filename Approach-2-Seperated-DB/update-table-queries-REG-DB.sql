# REG_DB Update Queries

# 1. REG_ASSOCIATION
# Remove "TEST" prefix from the REG_SOURCEPATH and REG_TARGETPATH columns
UPDATE `WSO2REG_DB`.`REG_ASSOCIATION` SET `REG_SOURCEPATH`=REPLACE(`REG_SOURCEPATH`,'TEST/',''), `REG_TARGETPATH`=REPLACE(`REG_TARGETPATH`,'TEST/','');


# 2. REG_LOG
# Remove "TEST" prefix from the REG_PATH and REG_USER_ID columns
UPDATE `WSO2REG_DB`.`REG_LOG` SET `REG_PATH`=REPLACE(`REG_PATH`,'TEST/',''), `REG_USER_ID`=REPLACE(`REG_USER_ID`,'TEST/','');

# 3. REG_RESOURCE
# Delete the row contains REG_PATH_ID of '/_system/governance/apimgt/applicationdata/provider/TEST' from WSO2REG_DB.REG_PATH
# Remove "TEST" prefix from REG_CREATOR and REG_LAST_UPDATOR columns
DELETE FROM `WSO2REG_DB.REG_RESOURCE` WHERE REG_PATH_ID IN 
			(SELECT REG_PATH_ID 
			FROM `WSO2REG_DB.REG_PATH`
            WHERE REG_PATH_VALUE='/_system/governance/apimgt/applicationdata/provider/TEST'
);
UPDATE `WSO2REG_DB`.`REG_RESOURCE` SET `REG_CREATOR`=REPLACE(`REG_CREATOR`,'TEST/',''), `REG_LAST_UPDATOR`=REPLACE(`REG_LAST_UPDATOR`,'TEST/','');

# 4. REG_PATH
# Delete the row contains REG_PATH_VALUE of '/_system/governance/apimgt/applicationdata/provider/TEST' from WSO2REG_DB.REG_PATH
# Remove "TEST" prefix from REG_PATH_VALUE column
DELETE FROM `WSO2REG_DB.REG_PATH` WHERE REG_PATH_VALUE='/_system/governance/apimgt/applicationdata/provider/TEST';
UPDATE `WSO2REG_DB`.`REG_PATH` SET `REG_PATH_VALUE`=REPLACE(`REG_PATH_VALUE`,'TEST/','');
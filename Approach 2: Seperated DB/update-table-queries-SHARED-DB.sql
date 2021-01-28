# SHARED_DB Update Queries
--------------------------

# 1. REG_ASSOCIATION
SELECT * FROM WSO2SHARED_DB.REG_ASSOCIATION;
UPDATE `WSO2SHARED_DB`.`REG_ASSOCIATION` SET `REG_SOURCEPATH`=REPLACE(`REG_SOURCEPATH`,'TEST/',''), `REG_TARGETPATH`=REPLACE(`REG_TARGETPATH`,'TEST/','');


# 2. REG_LOG
SELECT * FROM WSO2SHARED_DB.REG_LOG;
UPDATE `WSO2SHARED_DB`.`REG_LOG` SET `REG_PATH`=REPLACE(`REG_PATH`,'TEST/',''), `REG_USER_ID`=REPLACE(`REG_USER_ID`,'TEST/','');

# 3. REG_RESOURCE
# Delete the row contains REG_PATH_ID of '/_system/governance/apimgt/applicationdata/provider/TEST' from WSO2SHARED_DB.REG_PATH
SELECT * FROM WSO2SHARED_DB.REG_RESOURCE WHERE REG_PATH_ID IN
			(SELECT REG_PATH_ID
			FROM WSO2SHARED_DB.REG_PATH
            WHERE REG_PATH_VALUE='/_system/governance/apimgt/applicationdata/provider/TEST'
);
DELETE FROM WSO2SHARED_DB.REG_RESOURCE WHERE REG_PATH_ID IN
			(SELECT REG_PATH_ID
			FROM WSO2SHARED_DB.REG_PATH
            WHERE REG_PATH_VALUE='/_system/governance/apimgt/applicationdata/provider/TEST'
);
UPDATE `WSO2SHARED_DB`.`REG_RESOURCE` SET `REG_CREATOR`=REPLACE(`REG_CREATOR`,'TEST/',''), `REG_LAST_UPDATOR`=REPLACE(`REG_LAST_UPDATOR`,'TEST/','');

# 4. REG_PATH
SELECT * FROM WSO2SHARED_DB.REG_PATH WHERE REG_PATH_VALUE='/_system/governance/apimgt/applicationdata/provider/TEST';
DELETE FROM WSO2SHARED_DB.REG_PATH WHERE REG_PATH_VALUE='/_system/governance/apimgt/applicationdata/provider/TEST';
UPDATE `WSO2SHARED_DB`.`REG_PATH` SET `REG_PATH_VALUE`=REPLACE(`REG_PATH_VALUE`,'TEST/','');
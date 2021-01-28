# wso2-apim-primary-user-store
In wso2am-3.X.X, when configuring the JDBC primary user store, it is recommended not to change the default domain name, PRIMARY. Incase if this has been changed, there will be limitations in accessing the user details. Therefore, in order to revert the changes back without losing any data, the relevant DB tables need to be updated. 
The recommended way to configure the DB in wso2am-3.x.x is as follows.

#### Approach 1: Default DB Approach
 - WSO2AM_DB
 - WSO2SHARED_DB

This is the default setup in the product.

#### Approach 2: Separated DB Approach
 - WSO2AM_DB
 - WSO2SHARED_DB
 - WSO2REG_DB
 - WSO2USER_DB

This repository consist of DB queries to revert the primary user store domain name to PRIMARY. These were tested in wso2am-3.2.0, MySQL-8.0.22 in an all-in-one setup. Please select the scripts based on your DB setup.

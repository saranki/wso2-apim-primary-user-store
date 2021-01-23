# wso2-apim-primary-user-store
In wso2am-3.X.X, when configuring the JDBC primary user store, it is recommended not to change the default domain name, PRIMARY. Incase if this has been changed, there will be limitations in accessing the user details. Therefore, in order to revert the changes back without losing any data, the relevant DB tables need to be updated. 
There are 2 ways to configure the DB in wso2am-3.x.x and they are as follow.

#### Approach 1: Default Approach
 - WSO2AM_DB
 - WSO2SHARED_DB

This is the default setup in the product.
 
#### Approach 2: Separated Database Approach
 - WSO2AM_DB
 - WSO2REG_DB
 - WSO2USER_DB

If more modularity is prefered then approach 2 can be followed. The combination of WSO2REG_DB and WSO2USER_DB is the WSO2SHARED_DB.

This repository consist of DB queries to revert the primary user store domain name to PRIMARY under the above 2 approaches. This was tested in wso2am-3.2.0, MySQL-8.0.22 in an all-in-one setup.

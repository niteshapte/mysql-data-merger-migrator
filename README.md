mysql-data-merger-migrator
==========================

MySQL Data Migrator and Merger: Synchronize MySQL databases using PHP


Please dump oldschema.sql and newschema.sql in database first.

Data Migrator & Merger is for merging/migrating the data/records of two database of completely same or similar schema.

Consider the oldschema.sql and newschema.sql. In user_table in oldschema.sql user_created_date is missing but user_created_date is present in newschema.sql. Now, both schemas are not completely identical. And you want to put the data from oldschema to newschema or may be from newschema to oldschema, Data Merger will help you in the situation.

This is also available on my blog for everyone. Please have a look at http://blogs.niteshapte.com/2013-10-05-data-migrator-merger-synchronize-mysql-tables-records-using-php.htm

PHPClasses: http://www.phpclasses.org/package/7448-PHP-Synchronize-MySQL-tables-with-another-database.html

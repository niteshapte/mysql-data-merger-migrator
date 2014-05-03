 <?php
ini_set("display_errors", 1);
error_reporting("E_ALL ~ E_NOTICE");

include_once 'class.DataMigratorMerger.php';

$obj = new DatabaseMergerMigrator();

//migrate/merge from oldschema to newschema
$obj->mergeData("oldschema","newschema");

// Put third parameter as TRUE if you want to migrate/merge from newschema to old schema.
$obj->mergeData("oldschema","newschema", TRUE);

?> 

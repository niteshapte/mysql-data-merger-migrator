 <?php 
/**
 * Data Migrator Mreger is for merging the data/records of two database of completely same or similar schema.
 * 
 * @author Nitesh Apte
 */

class DataMigratorMreger {

    private $conn;
    private $sourceDB;
    private $destinationDB;


    public function __construct() {
        $this->conn = mysql_connect("localhost", "root", "");
    }

    public function mergeData($oldSchema, $newSchema, $reverse = FALSE) {
        mysql_query("SET FOREIGN_KEY_CHECKS = 0");
        
        if($reverse) {
            $this->destinationDB = $oldSchema;
            $this->sourceDB = $newSchema;
        } else {
            $this->destinationDB = $newSchema;
            $this->sourceDB = $oldSchema;
        }
            
        mysql_query("use ".$oldSchema);
        
        $tables = $this->getAssoc("show tables");
        
        for($i=0;$i<count($tables);$i++) {
            
            /* Disable this in case you want to merge the data */
            $trun = "TRUNCATE $this->destinationDB.".$tables[$i]['Tables_in_'.$this->sourceDB];
            mysql_query($trun);
            
            $values = $this->getAssoc("describe ".$tables[$i]['Tables_in_'.$oldSchema]);
            
            // put $j=1 in case of merging. Generally, first column is auto incremented id
            for($j=0;$j<count($values);$j++) {
                $val[$i][] =  $values[$j]['Field'];
            }

            $field = implode(',', $val[$i]);
            
            $sql = "INSERT INTO $this->destinationDB.".$tables[$i]['Tables_in_'.$oldSchema]." ($field) SELECT ".$field." FROM $this->sourceDB.".$tables[$i]['Tables_in_'.$oldSchema];
            
            mysql_query($sql);
        }
        
        mysql_query("SET FOREIGN_KEY_CHECKS = 1");
    }

    public function getAssoc($queryString) {

        $rs = mysql_query($queryString, $this->conn);

        while($rw = @mysql_fetch_array($rs, MYSQL_ASSOC)){
            $values[] = $rw;
        }
        return $values;
    }
}
?> 

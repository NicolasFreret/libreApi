 <?php
//https://phpdelusions.net/pdo_examples/

require 'bddConnection.php';


class Crud{


    private static $bddInstance = null;

    static private function singleton():PDO{
        if(! Crud::$bddInstance ){
            Crud::$bddInstance = new bddConnection('librapi_jhjhjhjh', 'librapi', 'f98jf6sxzg4puxkf4kn9jj9v:3306', 'GI))LjolMXL3Rpm5' );
        }
        return Crud::$bddInstance->database();
    }


    public function read(string $table, string $fields = '*', string $conditions = ''){
        
        $conn = Crud::singleton();
        $stmt = $conn->query("SELECT $fields FROM $table $conditions");
        try{
            $res = $stmt->fetchAll(PDO::FETCH_ASSOC);
            //return count($res) > 1 ? $res : count($res)  == 1 ? $res[0] : [];
            if(count($res) > 1) return $res;
            if(count($res) == 1) return $res[0];
            return [];

        }catch(PDOException $e){
            return [];
        }
    }


// $sql = "UPDATE users SET name=?, surname=?, sex=? WHERE id=?";
// $pdo->prepare($sql)->execute([$name, $surname, $sex, $id]);

 public function update(string $table, array $datas, int $id){
    $conn = Crud::singleton();

    $sql = "UPDATE $table SET ".implode('=?, ', array_keys($datas))."=? WHERE id=".$id;
    $stmt= $conn->prepare($sql);
    try{
        $stmt->execute(array_values($datas));
        return $stmt->rowCount();
    }catch(PDOException $e){
            return 0;
    }
    
 }

 public function delete(string $table, array $datas){
    
    $conn = Crud::singleton();
    $sql = "DELETE FROM $table WHERE ".implode('=? AND ', array_keys($datas))." = ?";
    $stmt= $conn->prepare($sql);
    try{
        $stmt->execute(array_values($datas));
        return $stmt->rowCount();
    }catch(PDOException $e){
            return $e;
    }
 }


 public function create(string $table, array $datas){
    $conn = Crud::singleton();
    $sql = "INSERT INTO $table (".implode(',', array_keys($datas)).") VALUES  (".str_repeat('?,', count($datas) - 1)."?) ";
    $stmt= $conn->prepare($sql);
    try{
        $stmt->execute(array_values($datas));
        return $stmt->rowCount();
    }catch(PDOException $e){
            return $e;
    }
 }

}





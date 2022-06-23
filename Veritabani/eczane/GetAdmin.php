<?php
	$Sifre = "JGfSJXMGrc"; 

    header("Access-Control-Allow-Origin: *");
    include 'database.php';
    if (!empty($_POST)) {
        $veri = $_POST['sifre'];
        if($veri==$Sifre){
            $pdo = Database::connect();
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $sql = "SELECT * FROM admin WHERE id=1";
            $query = $pdo->query($sql, PDO::FETCH_ASSOC);
            $data = $query->fetch(PDO::FETCH_ASSOC);
            echo $data["username"].":".$data["password"];
            Database::disconnect();
       }
    }
?>

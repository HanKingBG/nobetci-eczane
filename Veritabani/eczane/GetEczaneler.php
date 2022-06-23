<?php
	$Sifre = "JGfSJXMGrc"; 

    header("Access-Control-Allow-Origin: *");
    include 'database.php';
    if (!empty($_POST)) {
        $veri = $_POST['sifre'];
        if($veri==$Sifre){
            $pdo = Database::connect();
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $sql = "SELECT * FROM eczaneler";
            $query = $pdo->query($sql, PDO::FETCH_ASSOC);
            Database::disconnect();
            foreach ($query as $row) {
                echo  $row["İlce"]."$".$row["EczaneAdi"]."$".$row["Telefon"]."$".$row["Adres"]."<br>";
            }
            Database::disconnect();
       }
    }
?>

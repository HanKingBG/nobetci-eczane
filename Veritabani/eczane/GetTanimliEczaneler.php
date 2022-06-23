<?php
	$Sifre = "JGfSJXMGrc"; 

    header("Access-Control-Allow-Origin: *");
    include 'database.php';
    if (!empty($_POST)) {
        $veri = $_POST['sifre'];
        if($veri==$Sifre){
            $pdo = Database::connect();
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $sql = "SELECT * FROM tanimlieczaneler";
            $query = $pdo->query($sql, PDO::FETCH_ASSOC);
            foreach ($query as $row) {
                $tarih = $row["Tarih"];
                $tarih = explode(" ",$tarih);
                $tarih = explode("-",$tarih[0]);
                $yeniTarih = $tarih[2].".".$tarih[1].".".$tarih[0];
                echo  $row["id"]."$".$row["İlce"]."$".$row["EczaneAdi"]."$".$row["Telefon"]."$".$yeniTarih."$".$row["Adres"]."<br>";
            }
            Database::disconnect();
       }
    }
?>

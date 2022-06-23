<?php
	$Sifre = "JGfSJXMGrc"; 

    header("Access-Control-Allow-Origin: *");
    include 'database.php';
    if (!empty($_POST)) {
        $veri = $_POST['sifre'];
        $Ilce = $_POST['ilce'];
        $EczaneAdi = $_POST['eczaneAdi'];
        $Tarih = $_POST['tarih'];
        if($veri==$Sifre){
            $pdo = Database::connect();
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $sql = "SELECT * FROM eczaneler WHERE `İlce`= '".$Ilce."' AND `EczaneAdi`='".$EczaneAdi."'";
            $query = $pdo->query($sql, PDO::FETCH_ASSOC);
            $data = $query->fetch(PDO::FETCH_ASSOC);
            $telefon = $data["Telefon"];
            $adres = $data["Adres"];
            $sql = "INSERT INTO `tanimlieczaneler` (`İlce`, `EczaneAdi`, `Telefon`,`Adres`,`Tarih`) VALUES (?,?,?,?,?)";
            $q = $pdo->prepare($sql);
            $q->execute(array($Ilce,$EczaneAdi,$telefon,$adres,$Tarih));
            Database::disconnect();
            echo "Başarılı";
       }
    }
?>

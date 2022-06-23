<?php
	$Sifre = "JGfSJXMGrc"; 
    header("Access-Control-Allow-Origin: *");
    include 'database.php';
    if (!empty($_POST)) {
        $veri = $_POST['sifre'];
        if($veri==$Sifre){
            $id = $_POST['id'];
            $pdo = Database::connect();
            $sql = "DELETE FROM `tanimlieczaneler`  WHERE id = ? ";;
            $q = $pdo->prepare($sql);
            $q->execute(array($id));
            Database::disconnect();
            echo "Silindi";
       }
    }
?>

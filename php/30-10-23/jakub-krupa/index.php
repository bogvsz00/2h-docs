<?php
    if(isset($_POST["dodaj"])){
        $imie = $_POST["imie"];
        $nazwisko = $_POST["nazwisko"];
        $pesel = $_POST["pesel"];
        $plec = $_POST["plec"];
        $rok = $_POST["rok"];
        $kolor = $_POST["kolor"];
        $wzrost = $_POST["wzrost"];
        
        $sql = "INSERT INTO `osoby` (`Imie`, `Nazwisko`, `PESEL`, `Plec`, `Rok urodzenia`, `Kolor oczu`, `Wzrost`) VALUES ('$imie', '$nazwisko', '$pesel', '$plec', '$rok', '$kolor', '$wzrost')";
    
    }
        if(isset($_POST["imie"])){
            $imie = $_POST["imie"];
            $sql = "SELECT * FROM `osoby` WHERE `Imie` = '$imie' ORDER BY `Rok urodzenia` DESC";
        } else {
            $sql = "SELECT * FROM `osoby` ORDER BY `Rok urodzenia` DESC";
        }

    $conn = mysqli_connect("localhost","root","","jk");
    
    $result = mysqli_query($conn, $sql) or die("KYS");
    $count = mysqli_num_rows($result);
    
?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PHP - 30.10</title>
</head>
<body>
 
<h2>Wpisz Imię osoby której dane cie interere</h2>
    <form method="POST" >
        <table>
        Podaj imię
        <input type="text" name="imie"><br>
        Podaj nazwisko
        <input type="text" name="nazwisko"><br>
        Podaj pesel
        <input type="text" name="pesel"><br>
        Podaj plec
        <input type="text" name="plec"><br>
        Podaj rok
        <input type="text" name="rok"><br>
        Podaj kolor
        <input type="text" name="kolor"><br>
        podaj wzrost
        <input type="text" name="wzrost"><br>
        <input type="submit" name="dodaj" value="dodaj">
        </table>
    </form>
 
    <h2>Wpisz Imię osoby której dane cie interere</h2>
    <form method="POST" >
        <input type="text" name="imie">
        <input type="submit" name="szukaj" value="Szukaj">
    </form>
<?php
    echo "zwrócono $count wierszy <br>";
    while ($row = mysqli_fetch_array($result)) {
        echo $row['Imie']."  ".$row['PESEL']."<br>";
    }
?>
    
</body>
</html>
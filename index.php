<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <div class="grid-container">
    <div class="box box1">
<?php
$conn=new mysqli('localhost','kornas','123','lib');
$sql=('SELECT * FROM autor,tytul,krzyzowa WHERE (autor.id_autor = krzyzowa.id_autor) AND (tytul.id_tytul = krzyzowa.id_tytul)');
$result=$conn->query($sql);

echo("<table>");
echo("<tr>
<th>Imie</th>
<th>Nazwisko</th>
<th>Tytul</th>
<th>ISBN</th>
</tr>");
    while($wiersz=$result->fetch_assoc()){
        echo("<tr>");
        echo("<td>".$wiersz['imie']."</td><td>".$wiersz['nazwisko']."</td><td>".$wiersz['tytul']."</td><td>".$wiersz['isbn']."</td>");
        echo("</tr>");
 }
echo("</table>");

?>
    
    </div>
    <div class="box box2">
    <form action="insert.php" method="post" class="insert">
                    <input type="text" name="imie" placeholder="Imię">
                    <input type="text" name="nazwisko" placeholder="Nazwisko">
                    <input type="text" name="tytul" placeholder="tytul">
                    <input type="text" name="isbn" placeholder="ISBN">
                    <input type="submit" value="Dodaj">
                </form>
    </div>
    <div class="box box3">3</div>
    <div class="box box4">4</div>
    <div class="box box5">5</div>
    </div>
</body>
</html>

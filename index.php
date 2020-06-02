<!DOCTYPE html>
<html>
  <head>
    <title> Kacper Kornas</title>
    <meta charset="UTF-8" />
    <link rel="stylesheet" href="style.css">
  </head>

  <body>
  <h1>Kacper Kronas</h1>
  <div class="grid-container">
<div class="box box1">

<div class="btn"><a href="Samochody.html">Najszybszy Samochód Świata</a></div>
<div class="btn2"><a href="Samoloty.html">Najszybszy Samolot Świata</a></div>

</div>
<div class="box box2">coś</div>
<div class="box box3">
  <form class="calculator" name="kalk">
    <input class="value" type="text" name="txt" readonly="">
    <span class="num" onclick="document.kalk.txt.value =''">c</span>
    <span class="num" onclick="document.kalk.txt.value +='/'">/</span>
    <span class="num" onclick="document.kalk.txt.value +='*'">*</span>
    <span class="num" onclick="document.kalk.txt.value +='-'">-</span>
    <span class="num" onclick="document.kalk.txt.value +='7'">7</span>
    <span class="num" onclick="document.kalk.txt.value +='8'">8</span>
    <span class="num" onclick="document.kalk.txt.value +='9'">9</span>
    <span class="num" onclick="document.kalk.txt.value +='+'">+</span>
    <span class="num" onclick="document.kalk.txt.value +='4'">4</span>
    <span class="num" onclick="document.kalk.txt.value +='5'">5</span>
    <span class="num" onclick="document.kalk.txt.value +='6'">6</span>
    <span class="num" onclick="document.kalk.txt.value +='.'">.</span>
    <span class="num" onclick="document.kalk.txt.value +='1'">1</span>
    <span class="num" onclick="document.kalk.txt.value +='2'">2</span>
    <span class="num" onclick="document.kalk.txt.value +='3'">3</span>
    <span class="num" onclick="document.kalk.txt.value = eval(document.kalk.txt.value)">=</span>
    
  </form>
</div>
<div class="box box4">
  <?php
            $conn=new mysqli('localhost','kornas','123','kornas');
            $sql=('SELECT imie, dzial FROM prac,dzial WHERE(dzial.id = prac.id_dzial)');
            $result=$conn->query($sql);
            echo("<table>");
            echo("<tr>
            <th>Imie</th>
            <th>Dzial</th>
            </tr>");
                while($wiersz=$result->fetch_assoc()){
                    echo("<tr>");
                    echo("<td>".$wiersz['imie']."</td><td>".$wiersz['dzial']."</td>");
                    echo("</tr>");
             }
            echo("</table>");
            ?>
            </div>
    <script src="index.js"></script>
</div>
  </body>
</html>

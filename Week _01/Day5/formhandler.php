<?php
if($_SERVER["REQUEST_METHOD"] == "POST")
{
    $fistName = htmlspecialchars($_POST["fistname"]);
    $writeSome = htmlspecialchars($_POST["message"]);
    $eyeClor = htmlspecialchars($_POST["eyecolorblack"]);
    $carType = htmlspecialchars($_POST["cartype"]);

    echo "This Data you are Submitted: ";
    echo "<br>";
    echo "$writeSome";
    echo "<br>";
    echo "$eyeColor";
    echo "<br>";
    echo "$carType";
}

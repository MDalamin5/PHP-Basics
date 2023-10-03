<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PHP Syntax</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<?php



$name = "Intro to PhP";
echo "$name";
$name2 = 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Reprehenderit, aliquam.';
echo $name2;
$arr = [1,3,4,5,6];
for($i =0 ; $i<4; $i++)
{
    echo $arr[$i];
}


//objecet type
// $ob = new car();

?>
<br>
<p>i'm in html file and access to php file name <b> <?php echo $name; ?></b> </p>

</body>
</html>
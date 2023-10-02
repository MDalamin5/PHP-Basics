<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Day 03</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    
    <?php 
      echo $_SERVER["DOCUMENT_ROOT"];
      echo "<BR>";
      echo $_SERVER["PHP_SELF"];
      echo "<BR>";
      echo $_SERVER["SERVER_NAME"];
      echo "<BR>";
      echo $_SERVER["REQUEST_METHOD"];
      echo "<BR>";
      $_SESSION["username"] = "Al Amin";
      echo $_SESSION["username"];
    ?>



</body>
</html>
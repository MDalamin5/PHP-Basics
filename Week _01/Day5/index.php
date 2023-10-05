<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>From Heandeling</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <main>
    
            <form action="formhandler.php" method="post">
                <label for="firstname">First Name </label>
                <br>
                <input type="text" id="firstname" name="firstname" placeholder="Firstname">
                <br><br>
                <label for="message">Write Something Here</label>
                <br>
                <textarea name="message" id="message" cols="30" rows="10" placeholder="Please Write Something"></textarea>
                <br> <br>
                <label >Pick your Eye Color</label> <br>
                <input type="radio" id="eyecolorblue" name="eyecolor" value="Blue">
                <label for="eyecolorblue">Blue</label>
                <input type="radio" id="eyecolorbrown" name="eyecolor" value="brown">
                <label for="eyecolorbrown">Brown</label>
                <input type="radio" id="eyecolorblack" id="eyecolorblack" value="black">
                <label for="eyecolorblack">Black</label>
                <br><br>

                <label >What Pet do you have??</label> <br>
                <input type="checkbox" id="petcat" name="petcat" value="cat">
                <label for="petcat">Cat</label>
                <input type="checkbox" id="petdog" name="petdog" value="dog">
                <label for="petdog">Dog</label>
                <input type="checkbox" id="petwolf" id="petwolf" value="wolf">
                <label for="eyecolorblack">Wolf</label>
                <br><br>
                <label for="cartype">Car Type you own:</label> <br>
                <select name="cartype" id="cartype">
                    <option value="none">None</option>
                    <option value="Bangla">Bangla</option>
                    <option value="Alion">Alion</option>
                    <option value="Audi">Audi</option>  
                </select>
                <br><br>
                <button type="submit">Send the form</button>


                
            
     </form>
 
    </main>
</body>
</html>

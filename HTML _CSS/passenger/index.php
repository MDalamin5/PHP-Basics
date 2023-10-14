<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>passenger</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link rel="preconnect" href="https://firebasestorage.googleapis.com" />
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
<link href="../css/aspect-elements.css" rel="stylesheet" />
<link href="css/aspect-style.css" rel="stylesheet" />
</head>
<body id="root-container" style="margin: 0;" onload="initAspectJS()">
    <div id="content-container">
        <div id="container-id-153-" data-element-type="container">
          <a id="button-id-145-" data-element-type="button" href="/">
            <span id="element-id-146-">Home</span>
          </a>
          <a id="button-id-147-" data-element-type="button" href="/schedule/">
            <span id="element-id-148-">Schedule</span>
          </a>
          <a id="button-id-149-" data-element-type="button" href="/ticket/">
            <span id="element-id-150-">Ticket</span>
          </a>
          <a id="button-id-151-" data-element-type="button" href="/passenger/">
            <span id="element-id-152-">Register</span>
          </a>
        </div>
        <div id="container-id-169-" data-element-type="container">
          <div data-element-behavior="form" id="form-id-162-" data-element-type="section">
            <form action="inc/server.php"  id="container-id-163-" data-element-type="container" method="post">
              <p id="text-id-179-" data-element-type="text">
                <span id="element-id-180-">Note: A ticket is required to register</span>
              </p>
              <input id="input-id-1-" data-element-type="input" placeholder="ID" type = "number" name = "ID">
              <input id="input-id-164-" data-element-type="input" placeholder="Name" name = "name" type = "text">
              <input id="input-id-165-" data-element-type="input" placeholder="Age" type="text" type = "number" name = "age">
              <input id="input-id-174-" data-element-type="input" placeholder="Phone number" type="tel" name = "phone">
              <input id="input-id-176-" data-element-type="input" placeholder="Profession" type="text" name = "profession">
              <input id="input-id-178-" data-element-type="input" placeholder="Ticket Number" type="number" name = "ticket_num">
              <button id="button-id-166-" data-element-type="button" type="submit" value = "submit" name = "submit">
                <span id="element-id-167-">Create</span>
              </button>
            </form>
          </div>
        </div>
      </div>
</body>
</html>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>schedule</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link rel="preconnect" href="https://firebasestorage.googleapis.com" />
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
<link href="../css/aspect-elements.css" rel="stylesheet" />
<link href="css/aspect-style.css" rel="stylesheet" />
</head>
<body id="root-container" style="margin: 0;" onload="initAspectJS()">
    <div id="content-container">
        <div id="container-id-26-" data-element-type="container">
          <a id="button-id-18-" data-element-type="button" href="/">
            <span id="element-id-19-">Home</span>
          </a>
          <a id="button-id-20-" data-element-type="button" href="/schedule/">
            <span id="element-id-21-">Schedule</span>
          </a>
          <a id="button-id-22-" data-element-type="button" href="/ticket/">
            <span id="element-id-23-">Ticket</span>
          </a>
          <a id="button-id-24-" data-element-type="button" href="/passenger/">
            <span id="element-id-25-">Register</span>
          </a>
        </div>
        <div id="container-id-226-" data-element-type="container">
          <div data-element-behavior="form" id="form-id-218-" data-element-type="section">
          
            <form action="../form_handler.php" method="POST" id="container-id-219-" data-element-type="container" onsubmit="return submitAspectForm(this)">
              <input id="input-id-220-" data-element-type="input" placeholder="Schedule ID" required="true" name="schedule_ID">
              <input id="input-id-221-" data-element-type="input" placeholder="Arrival_Time" type="text" name="arrival_time">
              <input id="input-id-222-" data-element-type="input" placeholder="Departure_Time" name="departure_time">
              <input id="input-id-223-" data-element-type="input" placeholder="Ticket_Number" name="ticket_num">
              <button id="button-id-224-" data-element-type="button" type="submit" name="upload">
                <span id="element-id-225-">Upload</span>
              </button>
            </form>
          </div>
        </div>
      </div>
                    

</body>
</html>
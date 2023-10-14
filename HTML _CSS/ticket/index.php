<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>ticket</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link rel="preconnect" href="https://firebasestorage.googleapis.com" />
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
<link href="../css/aspect-elements.css" rel="stylesheet" />
<link href="css/aspect-style.css" rel="stylesheet" />
</head>
<body id="root-container" style="margin: 0;" onload="initAspectJS()">
    <div id="content-container">
        <div id="container-id-35-" data-element-type="container">
          <a id="button-id-27-" data-element-type="button" href="/">
            <span id="element-id-28-">Home</span>
          </a>
          <a id="button-id-29-" data-element-type="button" href="/schedule/">
            <span id="element-id-30-">Schedule</span>
          </a>
          <a id="button-id-31-" data-element-type="button" href="/ticket/">
            <span id="element-id-32-">Ticket</span>
          </a>
          <a id="button-id-33-" data-element-type="button" href="/passenger/">
            <span id="element-id-34-">Register</span>
          </a>
        </div>
        <div id="container-id-208-" data-element-type="container">
          <div data-element-behavior="form" id="form-id-41-" data-element-type="section">
            <form action="../form_handler.php" method="POST" id="container-id-36-" data-element-type="container">
              <input id="input-id-37-" data-element-type="input" placeholder="Ticket_Number" name = "ticket_num">
              <input id="input-id-38-" data-element-type="input" placeholder="Fare" type="text" name = "fare">
              <input id="input-id-182-" data-element-type="input" placeholder="Issue Date" name = "issue_date">
              <input id="input-id-184-" data-element-type="input" placeholder="Reservation ID" name = "reservation_id">
              <button id="button-id-39-" data-element-type="button" type="submit" value = "submit" name = "input">
                <span id="element-id-40-">Submit</span>
              </button>
            </form>
          </div>
        </div>
      </div>
</body>
</html>
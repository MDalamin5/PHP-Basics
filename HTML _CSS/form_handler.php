<?php
session_start();

// initializing variables
$passenger_id = "";
$name = "";
$age="";
$phone_num = "";
$profession = "";
$ticket_num = "";
$fare = "";
$issue_date = "";
$reservation_id = "";
$schedule_id = "";
$arrival_time_id = "";
$dept_time_id = "";
$seat_num = "";
$date = "";


$errors = array(); 

// connect to the database
$db = mysqli_connect('localhost', 'root', '', 'busmanagement');
if (mysqli_connect_errno()) {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  exit();
}

// Input ticket data from the form
if (isset($_POST['input'])) {
    // receive all input values from the form
      $ticket_num = $_POST['ticket_num'];
      $fare = $_POST['fare'];
      $issue_date = $_POST['issue_date'];
      $reservation_id = $_POST['reservation_id'];
      $seat_num = rand(1, 40);
      $date = date("Y-m-d");


//Insert into Bus Reservation  
  $sql1 = "INSERT INTO bus_reservation(Reservation_ID, Seat_Number, Date) 
  VALUES($reservation_id, $seat_num, $date)";
    $query = mysqli_query($db, $sql1);
        if ($query) {
            echo "Entry successful";
        }
        else
            echo "Error"; 

//Insert into Ticket
    $sql2 = "INSERT INTO tickets(Ticket_Number, Fare, Issue_Date, Reservation_ID) 
    VALUES($ticket_num, $fare, $issue_date, $reservation_id)";
    $query = mysqli_query($db, $sql2);
        if ($query) {
            echo "Entry successful";
        }
        else
            echo "Error"; 

    }


// Passenger data input
if (isset($_POST['create'])) {
    // receive all input values from the form
    $passenger_id = $_POST['ID'] ; 
    $name = $_POST['name'];
    $age = $_POST['age'];
    $phone_num = $_POST['phone'];
    $profession = $_POST['profession'];
    $ticket_num = $_POST['ticket_num'];

//Insert into DB
  $sql1 = "INSERT INTO passengers(Passenger_ID, P_Name, Age, Mobile_number, Profession, Ticket_Number) 
  VALUES($passenger_id, $name, $age, $phone_num, $profession, $ticket_num)";
    $query = mysqli_query($db, $sql1);
        if ($query) {
            echo "Entry successful";
        }
        else
            echo "Error"; 
}


header("location: index.php");
exit();
?>
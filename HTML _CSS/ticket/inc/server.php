
<?php
$host = 'localhost';
$username = 'root';
$password = '';  
$database = 'busmanagement';

// Create a new MySQLi object
$conn = new mysqli($host, $username, $password, $database);

// Check the connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Retrieve data from the HTML form
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $userid = $_POST["ID"];
    $name = $_POST["name"];
    $age = $_POST["age"];
    $number = $_POST["phone"];
    $pro = $_POST["profession"];
    $tick_num = $_POST["ticket_num"];
    
    // echo $age;
    // echo $number;
    // echo $pro;
    // echo $tick_num;
    
    

    

    // Sanitize and validate data if needed

    // SQL query to insert data into the 'users' table
    $sql = "INSERT INTO passengers (Passenger_ID, name, age, Mobile_number, Profession, Ticket_Number)
     VALUES ('$userid', '$name', '$age', '$number', '$pro', '$tick_num')";

    if ($conn->query($sql) === TRUE) {
        echo "Data inserted successfully!";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

// Close the connection
$conn->close();
?>
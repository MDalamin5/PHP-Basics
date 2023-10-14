
<?php
$host = 'localhost';
$username = 'root';
$password = '';  
$database = 'Ticket_Booking_System';

// Create a new MySQLi object
$conn = new mysqli($host, $username, $password, $database);

// Check the connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Retrieve data from the HTML form
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $userid = $_POST["user_id"];
    $f_name = $_POST["full_name"];
    $age = $_POST["age"];
    $mob_num = $_POST["ph_no"];
    $degree = $_POST["degree"];
    $institu = $_POST["institue"];
    $year_o_s = $_POST["yos"];
    $profession = $_POST["profession"];
    
    // echo "data got susss";
    // echo $userid;
    // echo $f_name;
    // echo $age;
    // echo $mob_num;
    // echo $degree;
    // echo $institu;
    // echo $year_o_s;
    // echo $profession;
    

    // Sanitize and validate data if needed

    // SQL query to insert data into the 'users' table
    $sql = "INSERT INTO Passengers (Passenger_ID, Name, Age, Mobile_number, Degree, Institute, Year, Profession)
            VALUES ('$userid', '$f_name', '$age', '$mob_num', '$degree', '$institu', '$year_o_s', '$profession')";

    if ($conn->query($sql) === TRUE) {
        echo "Data inserted successfully!";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

// Close the connection
$conn->close();
?>
<?php
// Database connection parameters
$servername = "localhost"; // Change this if your database is hosted elsewhere
$username = "root";
$password = "";
$database = "barangay"; // Your database name

// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// Get the search query from POST request
$query = $_POST['query'];

// SQL query to search for matching names
$sql = "SELECT Citizen_fname, Citizen_lname, Citizen_mname FROM citizen 
        WHERE Citizen_fname LIKE '%$query%' 
        OR Citizen_lname LIKE '%$query%' 
        OR Citizen_mname LIKE '%$query%'";

$result = $conn->query($sql);

// Output the results as HTML list items
if ($result->num_rows > 0) {
  while($row = $result->fetch_assoc()) {
    echo '<div class="autocomplete-item">' . $row['Citizen_fname'] . ' ' . $row['Citizen_lname'] . ' ' . $row['Citizen_mname'] . '</div>';
  }
} else {
  echo '<div class="autocomplete-item">No results found</div>';
}

// Close connection
$conn->close();
?>

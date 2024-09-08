<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "ads_b";
$table_registration = "registration";
$table_packets = "packets";

// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if(isset($_GET['data'])) {
    // Get the value of the 'data' parameter
    $data = $_GET['data'];
    $sql = "";
    // Split the string based on comma to get individual values
    $values = explode(',', $data);
    /* All packets sent to same server - differentiate on first data_id value */
    $data_id = $values[0];
    $device_id = $values[1];
    /* Check if valid device id, can only have 4 devices */
    if($device_id > 3) {
        echo "Invalid device id";
    }
    else {
        switch($data_id) {
            case 0:
                /* Got registration */
                $latitude = $values[2];
                $longitude = $values[3];
                $altitude = $values[4];

                $sql = "INSERT INTO $table_registration VALUES (NULL, $device_id, $latitude, $longitude, $altitude)";
                break;
            case 1:
                /* Got packets */
                $packet_data = $values[2];
                $timestamp = $values[3];
                $timestamp_ns = $values[4];
                $timestamp_s = $values[5];
                $sql = "INSERT INTO $table_packets VALUES (NULL, $device_id, $packet_data, $timestamp_s, $timestamp_ns)";
                break;
        }

        if ($conn->query($sql) === TRUE) {
            echo "Success";
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    }
} else {
    // Handle case when 'data' parameter is not present in the URL
    echo "No data parameter found in the URL";
}

// Close connection
$conn->close();

?>

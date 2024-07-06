<?php
session_start();
include 'koneksi.php';

$username = $_POST['username'];
$password = $_POST['password'];

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Debugging: Check received username and password
    error_log("Received username: $username");
    error_log("Received password: $password");

    // Create a prepared statement
    if ($stmt = $conn->prepare('SELECT admin_id, password FROM admins WHERE username = ?')) {
        // Bind parameters (s = string)
        $stmt->bind_param('s', $username);
        $stmt->execute();
        // Store the result to check if the account exists in the database
        $stmt->store_result();

        if ($stmt->num_rows > 0) {
            $stmt->bind_result($admin_id, $stored_password);
            $stmt->fetch();
            // Debugging: Check fetched stored password
            error_log("Fetched stored password: $stored_password");

            // Verify password
            if ($password === $stored_password) {
                // Verification success! User has logged-in!
                $_SESSION['loggedin'] = TRUE;
                $_SESSION['name'] = $username;
                $_SESSION['id'] = $admin_id;
                header('Location: ../adminpage/index.php');
            } else {
                // Debugging: Password verification failed
                error_log("Password verification failed");
                echo "<script>
						alert ('Login Gagal');
						</script>";
	    		echo '<META HTTP-EQUIV="Refresh" Content="0; URL=login.php">';
            }
        } else {
            // Debugging: Username not found
            error_log("Username not found");
			echo "<script>
			alert ('Login Gagal');
			</script>";
	echo '<META HTTP-EQUIV="Refresh" Content="0; URL=login.php">';
        }

        $stmt->close();
    } else {
		echo "<script>
		alert ('Login Gagal');
		</script>";
echo '<META HTTP-EQUIV="Refresh" Content="0; URL=login.php">';
    }
}



 ?>
<html>

<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>


<body>
<h1>Garg Enterprises Database</h1>

<p1></br></br><strong> You  have full authority to view the Garg Enterprise Database. You  can view records but you don't have permission to delete or insert or update them.
Accordingly you may make decisions relating to the welfare of the organization. From  a drop down menu select the table you want to view.
And then click on confirm button to get the records</strong></br></br> </p1>

<form action="" method="post">

<label for="tables">Choose a Table:</label>
<select id="tables" name="tables">
  <option value="Employee">Employee</option>
  <option value="Branch">Branch</option>
  <option value="Customer">Customer</option>
  <option value="Supplier">Supplier</option>
  <option value="Sold By">Sold By</option>
  <option value="Supplies">Supplies</option>
  <option value="Buys">Buys</option>
  <option value="Product">Product</option>
  <option value="Employee phone number">Employee phone number</option>
</select>
<input type="submit" name="submit" value="Choose options">

</form>



<?php 
$servername = "localhost";
$username = "root";
$password = "";
$db="gargEnterprises";

// Create connection
$conn = new mysqli($servername, $username, $password,$db);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

if(isset($_POST['submit'])){
  if(!empty($_POST['tables'])) {
      $selected = $_POST['tables'];
      if(strcmp("Employee",$selected)==0)
      {
$sql = "SELECT * FROM  Employee";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  echo "<table>";
  echo "<tr>";
      echo "<th>Employee Id</th>";
      echo "<th>Age</th>";
      echo "<th>Birth Date</th>";
      echo "<th>Email</th>";
      echo "<th>Address</th>";
      echo "<th>First Name</th>";
      echo "<th>Last Name</th>";
      echo "<th>Hours Worked</th>";
      echo "<th>Salary</th>";
      echo "<th>Branch Name</th>";
  echo "</tr>";
  // output data of each row
  while($row = $result->fetch_assoc()) {
    echo "<tr>";
                echo "<td>" . $row['emp_id'] . "</td>";
                echo "<td>" . $row['age'] . "</td>";
                echo "<td>" . $row['birth_date'] . "</td>";
                echo "<td>" . $row['address'] . "</td>";
                echo "<td>" . $row['email_id'] . "</td>";
                echo "<td>" . $row['first_Name'] . "</td>";
                echo "<td>" . $row['Last_Name'] . "</td>";
                echo "<td>" . $row['hoursworked'] . "</td>";
                echo "<td>" . $row['Salary'] . "</td>";
                echo "<td>" . $row['Branch_name'] . "</td>";
            echo "</tr>";
  }
} 
else {
  echo "0 results";
}
  }
}
}

?>

</body>

<script type="text/javascript">
  document.getElementById('tables').value = "<?php echo $_POST['tables'];?>";
</script>


<style>
        body {
          background-image: url('d1.png');
          color: black;
          padding: 30px;
  margin: 40px;
border: 20px solid black;
        }
        td {
  height: 80px;
  width: 160px;
  text-align: center;
  vertical-align: middle;
}tr:hover {background-color: white;}
table, th, td {
  border: 1px solid black;
}
h1{
  text-align: center;
}
</style>


</html>
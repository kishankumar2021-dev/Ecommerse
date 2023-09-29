
<?php
include('../config.php');
$category_id = $_POST['category_id'];
echo $category_id;
$result = mysqli_query($conn, "SELECT * FROM sub_category where cat_id=$category_id");

?>
<option>Select Sub Category</option>
<?php
while ($row = mysqli_fetch_array($result)) {
?>
    <option <?php echo $row['id'] ?>><?php echo $row['sname'] ?></option>
<?php }

?>
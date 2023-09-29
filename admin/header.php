
<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
        }

        .topnav {
            overflow: hidden;
            background-color: pink;
        }

        .topnav a {
            float: left;
            color: #f2f2f2;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            font-size: 17px;
        }

        .topnav a:hover {
            background-color: #ddd;
            color: black;
        }

        .topnav a.active {
            background-color: #04AA6D;
            color: white;
        }
    </style>
</head>

<body style="font-family:algerian;">

    <div class="topnav mt-2">
        <a class="active bg-primary" href="add_product_category.php" style="font-family:algerian;">Add Category</a>
        <a href="add_product_sub_catogary.php">Add Sub Category</a>
        <a href="add_product.php">Add Product</a>
        <a href="logout.php">Logout</a>
    </div>

</body>

</html>
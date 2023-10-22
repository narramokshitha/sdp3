<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDP3 project social media</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* CSS for the page layout */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
        }

        #sidebar {
            width: 80px;
            background-color: #333;
            color: #fff;
            padding: 20px;
            position: fixed;
            top: 0;
            left: 0;
            bottom: 0;
        }

        #content {
            margin-left: 80px;
            padding: 20px;
            overflow-y: scroll; /* Enable vertical scrolling */
            height: 100%; /* Ensure the content area takes up the full height */
        }

        /* CSS for the navigation links */
        #sidebar a {
            text-decoration: none;
            color: #fff;
            display: block;
            padding: 10px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        /* Hover effect for navigation links */
        #sidebar a:hover {
            background-color: #555;
        }

        /* CSS for the header */
        #header {
            background-color: #405de6;
            color: #fff;
            padding: 10px;
            text-align: center;
        }

        /* CSS for the content area */
        #feed {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            max-width: 600px; /* Adjust the maximum width of the content */
            margin: 0 auto; /* Center the content horizontally */
        }
    </style>
</head>
<body>
    <div id="sidebar">
        <a href="#" class="button"><i class="fas fa-home"></i></a></br>
        <a href="#" class="button"><i class="fas fa-compass"></i></a></br>
        <a href="#" class="button"><i class="fas fa-user"></i></a></br>
        <a href="#" class="button"><i class="fas fa-envelope"></i></a>
    </div>

    <div id="content">
        <div id="header">
            <h1>My Social Media</h1>
        </div>

        <div id="feed">
            <!-- Your scrolling content goes here -->
            <div class="post">
                <p>This is a sample post.</p>
            </div>
            <div class="post">
                <p>Another post on the feed.</p>
            </div>
            <!-- Repeat these post elements for more content -->
        </div>
    </div>
</body>
</html>

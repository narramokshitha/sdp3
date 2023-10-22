<!DOCTYPE html>
<html>
<head>
    <title>User Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #3f4c6b, #606c88);
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        .profile-header {
            padding: 20px;
            display: flex;
            align-items: center;
            border-bottom: 1px solid #e0e0e0;
        }

        .profile-image {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            overflow: hidden;
            margin-right: 20px;
        }

        .profile-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .user-info {
            flex: 1;
        }

        h1 {
            font-size: 28px;
            margin: 0;
        }

        .user-info p {
            font-size: 14px;
            margin: 0;
            color: #777;
        }

        .user-actions {
            margin-top: 20px;
            display: flex;
        }

        .user-actions button {
            flex: 1;
            padding: 10px;
            margin-right: 10px;
            background-color: #3498db;
            color: #fff;
            border: none;
            cursor: pointer;
        }

        .user-bio {
            padding: 20px;
        }

        h2 {
            font-size: 20px;
        }

        .user-bio p {
            font-size: 16px;
        }

        .user-activity {
            padding: 20px;
        }

        /* Style the form elements */
        form {
            display: none;
            padding: 20px;
        }

        form h2 {
            font-size: 24px;
            margin: 0 0 20px;
        }

        form label {
            font-size: 16px;
            display: block;
            margin-bottom: 5px;
        }

        form input[type="text"],
        form input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }

        form button[type="button"],
        form button[type="submit"] {
            padding: 10px 20px;
            border: none;
            background-color: #3498db;
            color: #fff;
            cursor: pointer;
        }

        form button[type="button"] {
            background-color: #e74c3c;
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="profile-header">
            <div class="profile-image">
                <img src="profile img.jpg" alt="User Profile Picture">
            </div>
            <div class="user-info">
                <h1>Thanmai Kora</h1>
                <p>Location: Hyderabad, India</p>
                <p>Followers: 1000</p>
                <p>Following: 500</p>
                <div class="user-actions">
                    <button id="edit-profile-button">Edit Profile</button>
                    <button id="settings-button">Settings</button>
                </div>
            </div>
        </div>
        <div class="user-bio">
            <h2>Bio</h2>
            <p>Coding enthusiast.</p>
            <p>Java, C, Python</p>
        </div>
        <div class="user-activity">
            <h2>Recent Activity</h2>
            <!-- List recent posts or activities here -->
        </div>

        <!-- Edit Profile Form -->
        <form class="edit-profile-form">
            <h2>Edit Profile</h2>
            <label for="new-username">Change Username:</label>
            <input type="text" id="new-username" placeholder="New Username">

            <label for="new-password">Change Password:</label>
            <input type="password" id="new-password" placeholder="New Password">

            <button type="button" id="cancel-edit">Cancel</button>
            <button type="submit">Save Changes</button>
        </form>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            const editProfileButton = document.getElementById('edit-profile-button');
            const editProfileForm = document.querySelector('.edit-profile-form');
            const cancelEditButton = document.getElementById('cancel-edit');

            // Handle "Edit Profile" button click
            editProfileButton.addEventListener('click', function () {
                editProfileForm.style.display = 'block';
            });

            // Handle "Cancel" button clicks
            cancelEditButton.addEventListener('click', function () {
                editProfileForm.style.display = 'none';
            });

            // Handle form submissions (you would send this data to the server for processing)
            editProfileForm.addEventListener('submit', function (e) {
                e.preventDefault();
                // Handle the edit profile form submission here
                // You would typically send the data to the server for processing.
                editProfileForm.style.display = 'none';
            });
        });
    </script>
</body>
</html>

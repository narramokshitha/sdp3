<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDP3 Project Social Media</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* Reset some default styles */
        body, html {
            margin: 0;
            padding: 0;
            height: 100%;
        }

        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #3f4c6b, #606c88);
            overflow: auto; /* Allow scrolling on the entire page */
        }

        /* Layout Styles */
        #sidebar {
            width: 300px;
            background: #292e3c;
            color: #fff;
            position: fixed;
            top: 0;
            left: 0;
            height: 100%;
            overflow-y: auto;
        }

        #content {
            margin-left: 300px;
            padding: 20px;
        }

        /* Header Styles */
        #header {
            background-color: #635fad;
            color: #fff;
            padding: 10px;
            text-align: center;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
        }

        /* Feed Styles */
        #feed {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }

        /* Post Styles */
        .post {
            margin-bottom: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            background-color: #f3f3f3;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .post img {
            max-width: 100%;
            height: auto;
            margin: 10px 0;
        }

        .post-actions {
            display: flex;
            justify-content: space-between;
            padding: 10px;
        }

        .like-button,
        .comment-button {
            cursor: pointer;
            color: #405de6;
            margin-right: 10px;
        }

        .like-button.liked i {
            color: #ff0000;
        }

        .post-comments {
            padding: 10px;
        }

        .comment {
            margin-bottom: 10px;
            border-radius: 5px;
            padding: 10px;
            background-color: #f8f8f8;
        }

        /* Sidebar Styles */
        #friend-suggestions {
            margin-top: 20px;
        }

        .friend {
            display: flex;
            align-items: center;
            margin: 10px 0;
        }

        .friend img {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            margin-right: 10px;
        }

        .friend-name {
            font-weight: bold;
        }

        /* Improve the sidebar button styling */
        #sidebar a {
            text-decoration: none;
            color: #fff;
            display: block;
            padding: 10px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        #sidebar a:hover {
            background-color: #444;
        }

        /* Style the header and feed text */
        #header h1, #feed p {
            font-weight: bold;
        }

        /* Center the 'Add a comment' input field */
        .comment input {
            width: 100%;
        }

        /* Custom styling for the "Add a post" section */
        #add-post {
            background-color: #f3f3f3;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-top: 20px;
        }

        #add-post input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: none;
            border-radius: 5px;
        }

        #add-post button {
            padding: 10px 20px;
            background-color: #405de6;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        #add-post button:hover {
            background-color: #3a4dbd;
        }
    </style>
</head>
<body>

<div id="sidebar">
        <a href="#" class="button"><i class="fas fa-home"></i> Home</a>
        <a href="/explore" class="button"><i class="fas fa-compass"></i> Explore</a>
        <a href="/profile" class="button"><i class="fas fa-user"></i> Profile</a>
        <a href="/message" class="button"><i class="fas fa-envelope"></i> Messages</a>
		<a href="/blogging" class="button"><i class="fas fa-pencil-alt"></i> Blogging</a>
		<a href="/mentalhealth" class="button"><i class="fas fa-brain"></i> Mental Health</a>
		
        <div id="friend-suggestions" style="margin-top: 20px;">
            <h2>Friend Suggestions</h2>
            <style>
                .friend {
                    display: flex;
                    align-items: center;
                    padding: 10px;
                    transition: background-color 0.3s;
                }

                .friend:hover {
                    background-color: #444; /* Change the background color on hover */
                }

                .friend img {
                    width: 50px;
                    height: 50px;
                    border-radius: 50%;
                    margin-right: 10px;
                }

                .friend-name {
                    font-weight: bold;
                }
            </style>
            <div class="friend">
                <img src="profile1.jpeg" alt="Profile Image">
                <span class="friend-name">samyuktha@12</span>
            </div>
            <div class="friend">
                <img src="profile2.jpeg" alt="Profile Image">
                <span class="friend-name">Jack_sheldon</span>
            </div>
            <div class="friend">
                <img src="profile3.jpg" alt="Profile Image">
                <span class="friend-name">Vanessa.90</span>
            </div>
            <div class="friend">
                <img src="profile4.jpg" alt="Profile Image">
                <span class="friend-name">Ajith</span>
            </div>
            
        </div>
    </div>

<div id="content">
        <div id="header">
            <h1>Home Feed</h1>
        </div>

        <div id="add-post">
            <input type="text" id="post-text" placeholder="Add a post">
            <input type="file" accept="image/*" id="post-image">
            <button onclick="addPost()">Post</button>
        </div>

        <div id="feed" style="max-height: calc(100vh - 130px); overflow-y: scroll;">
            <div id="post-container"></div>
        </div>
    </div>

    <script>
        let postIdCounter = 0;

        function addPost() {
            const postText = document.querySelector('#post-text').value;
            const postImage = document.querySelector('#post-image').files[0];
            const postContainer = document.getElementById('post-container');

            if (postText || postImage) {
                const post = document.createElement('div');
                post.className = 'post';
                post.innerHTML = `<p>${postText}</p>`;
                
                if (postImage) {
                    const image = document.createElement('img');
                    const imageUrl = URL.createObjectURL(postImage);
                    image.src = imageUrl;
                    post.appendChild(image);
                }

                post.innerHTML += `
                <div class="post-actions">
                    <span class="like-button" onclick="toggleLike(${postIdCounter})"><i class="far fa-heart"></i> Like</span>
                    <span class="comment-button" onclick="toggleComment(${postIdCounter})"><i class="far fa-comment"></i> Comment</span>
                    <span class="like-count">0 likes</span>
                </div>
                <div class="post-comments" id="post-comments-${postIdCounter}"></div>`;
                
                // Insert the new post at the top of the post container
                postContainer.insertBefore(post, postContainer.firstChild);

                postIdCounter++;
                document.querySelector('#post-text').value = '';
                document.querySelector('#post-image').value = '';
            }
        }

        function toggleLike(postId) {
            const likeButton = document.querySelector(`.post:nth-child(${postId + 1}) .like-button`);
            const likeCount = document.querySelector(`.post:nth-child(${postId + 1}) .like-count`);
            const heartIcon = likeButton.querySelector('i');
            if (heartIcon.classList.contains('far')) {
                heartIcon.classList.remove('far');
                heartIcon.classList.add('fas');
                likeCount.textContent = (parseInt(likeCount.textContent) + 1) + ' likes';
            } else {
                heartIcon.classList.remove('fas');
                heartIcon.classList.add('far');
                likeCount.textContent = (parseInt(likeCount.textContent) - 1) + ' likes';
            }
        }

        function toggleComment(postId) {
            const commentsContainer = document.getElementById(`post-comments-${postId}`);
            const commentForm = document.createElement('div');
            commentForm.innerHTML = '<input type="text" placeholder="Add a comment...">';
            commentForm.innerHTML += `<button onclick="addComment(${postId})">Post</button>`;
            commentsContainer.appendChild(commentForm);
        }

        function addComment(postId) {
            const inputField = document.querySelector(`.post:nth-child(${postId + 1}) input`);
            const commentsContainer = document.getElementById(`post-comments-${postId}`);
            const comment = document.createElement('div');
            comment.className = 'comment';
            comment.innerHTML = `<p><strong>You:</strong> ${inputField.value}</p>`;
            commentsContainer.appendChild(comment);
            inputField.value = '';
        }
    </script>
</body>
</html>
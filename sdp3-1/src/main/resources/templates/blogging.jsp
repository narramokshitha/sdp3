<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blogging Platform</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #3f4c6b, #606c88);
            margin: 0;
            padding: 0;
        }

        header {
            background: linear-gradient(135deg, #3f4c6b, #606c88);
            color: #fff;
            text-align: center;
            padding: 20px;
        }

        h1 {
            font-size: 24px;
            margin: 0;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .blog-list {
            list-style: none;
            padding: 0;
        }

        .blog-list li {
            border: 1px solid #ddd;
            margin-bottom: 20px;
            padding: 20px;
            border-radius: 5px;
            background-color: #f9f9f9;
        }

        .blog-list li h2 {
            font-size: 20px;
            margin: 0;
            color: #333;
        }

        .blog-list li p {
            color: #666;
        }

        .blog-form {
            margin-top: 20px;
        }

        .blog-form textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .blog-form button {
            padding: 10px 20px;
            background-color: #405de6;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .blog-form button:hover {
            background-color: #3a4dbd;
        }
    </style>
</head>
<body>
    <header>
        <h1>BLOGGING</h1>
    </header>
    <div class="container">
        <h2>My Blogs</h2>
        <ul class="blog-list">
            <li>
                <h2>Fun time with Friends</h2>
                <p>Date: October 15, 2023</p>
                <p>We went on a really fun trip with friends... We had a great time together after so many stressful moments.</p>
            </li>
            <li>
                <h2>Back when I was in school</h2>
                <p>Date: October 14, 2023</p>
                <p>I wish I am 9, so I could be all fine. Homeworks to be done on time, stories of class 9.</p>
            </li>
            <!-- Add more blogs here -->
        </ul>
        <div class="blog-form">
            <h2>Write a Blog</h2>
            <textarea id="blog-content" placeholder="Write your blog here..."></textarea>
            <button onclick="addBlog()">Add Blog</button>
        </div>
    </div>
    
    <script>
        function addBlog() {
            const blogContent = document.getElementById("blog-content").value;
            if (blogContent.trim() !== "") {
                const blogList = document.querySelector(".blog-list");
                const newBlogItem = document.createElement("li");
                newBlogItem.innerHTML = `
                    <h2>New Blog</h2>
                    <p>Date: ${new Date().toLocaleDateString()}</p>
                    <p>${blogContent}</p>
                `;
                blogList.appendChild(newBlogItem);
                document.getElementById("blog-content").value = "";
            }
        }
    </script>
</body>
</html>

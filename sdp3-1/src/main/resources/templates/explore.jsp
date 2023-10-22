<!DOCTYPE html>
<html>
<head>
    <title>Explore</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #3f4c6b, #606c88);
            margin: 0;
            padding: 0;
            color: #fff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            overflow: hidden;
        }
        .container {
            width: 100vw;
            max-width: 100%;
            height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }
        .explore-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 10px;
        }
        .explore-item {
            border: 1px solid #222;
            border-radius: 5px;
            overflow: hidden;
            position: relative;
        }
        .explore-item img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        .explore-item-caption {
            padding: 10px;
            text-align: center;
            background-color: rgba(0, 0, 0, 0.6);
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
        }
        .search-bar {
            display: flex;
            justify-content: flex-end;
            align-items: center;
            margin: 10px 0;
        }
        .search-bar input[type="text"] {
            width: 200px;
            padding: 8px;
            border: none;
            border-radius: 5px;
            outline: none;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .search-bar button {
            padding: 8px 16px;
            background-color: #913d88;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>
    <div id="sidebar">
        <!-- Your sidebar content, as provided in the previous answer -->
    </div>
    <div class="container">
        <h1>Explore</h1>
        <div class="search-bar">
            <input type="text" id="searchInput" placeholder="Search by Caption...">
            <button id="searchButton">Search</button>
        </div>
        <div class="explore-grid">
            <div class="explore-item" data-profile="Profile 1">
                <img src="image1.jpg" alt="Profile 1">
                <div class="explore-item-caption">Caption 1</div>
            </div>
            <div class="explore-item" data-profile="Profile 2">
                <img src="image2.jpg" alt="Profile 2">
                <div class="explore-item-caption">Caption 2</div>
            </div>
               <div class="explore-item" data-profile="Profile 3">
                <img src="image3.jpg" alt="Profile 3">
                <div class="explore-item-caption">Caption 3</div>
            </div>

            <!-- Add more explore items here -->
        </div>
    </div>
    <script>
        document.getElementById("searchButton").addEventListener("click", function () {
            const searchInput = document.getElementById("searchInput").value.toLowerCase();
            const exploreItems = document.querySelectorAll(".explore-item");

            exploreItems.forEach(function (item) {
                const caption = item.querySelector(".explore-item-caption").textContent.toLowerCase();
                if (caption.includes(searchInput)) {
                    item.style.display = "block";
                } else {
                    item.style.display = "none";
                }
            });
        });
    </script>
</body>
</html>

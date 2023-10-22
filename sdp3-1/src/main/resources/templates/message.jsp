<!DOCTYPE html>
<html>
<head>
    <title>Enhanced Messaging</title>
    <style>
        body {
            font-family: Arial, sans-serif;
           background: linear-gradient(135deg, #3f4c6b, #606c88);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            width: 800px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            overflow: hidden;
            display: flex;
            flex-direction: column;
        }

        .chat-header {
            padding: 10px;
            background-color: #007bff;
            color: #fff;
        }

        .chat-list {
            width: 200px;
            border-right: 1px solid #ccc;
            overflow-y: auto;
        }

        .chat-item {
            padding: 10px;
            border-bottom: 1px solid #ccc;
            cursor: pointer;
            background-color: #fff;
        }

        .chat-item.active {
            background-color: #007bff;
            color: #fff;
        }

        .messages {
            flex: 1;
            overflow-y: auto;
            padding: 20px;
        }

        .message {
            padding: 10px;
            border-radius: 5px;
            overflow: hidden;
            margin-bottom: 10px;
        }

        .message.you {
            background-color: #007bff;
            color: #fff;
            align-self: flex-end;
        }

        .message.other {
            background-color: #e5e5e5;
            color: #000;
            align-self: flex-start;
        }

        .sender {
            font-weight: bold;
            margin-right: 10px;
        }

        .timestamp {
            font-size: 12px;
            color: #000;
            float: right;
        }

        .avatar {
            width: 30px;
            height: 30px;
            border-radius: 50%;
            background-color: #007bff;
            color: #fff;
            text-align: center;
            line-height: 30px;
            font-weight: bold;
            float: left;
            margin-right: 10px;
        }

        .input-box {
            display: flex;
            padding: 10px;
            border-top: 1px solid #ccc;
        }

        .input-box input {
            flex: 1;
            padding: 10px;
            border: none;
        }

        .input-box button {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 15px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="chat-header">
            Chat with Alice
        </div>
        <div class="messages" id="message-box">
            <div class="message you">
                <div class="avatar">Y</div>
                <span class="sender">You:</span> Hello, how are you?
                <div class="timestamp">10:00 AM</div>
            </div>
            <div class="message other">
                <div class="avatar">A</div>
                <span class="sender">Alice:</span> I'm doing well, thanks for asking.
                <div class="timestamp">10:05 AM</div>
            </div>
        </div>
        <div class="input-box">
            <input type="text" id="message-input" placeholder="Type a message...">
            <button id="send-button">Send</button>
        </div>
    </div>

    <script>
        const messageBox = document.getElementById("message-box");
        const messageInput = document.getElementById("message-input");
        const sendButton = document.getElementById("send-button");
        const chatItems = document.querySelectorAll(".chat-item");

        chatItems.forEach(item => {
            item.addEventListener("click", () => {
                chatItems.forEach(chatItem => chatItem.classList.remove("active"));
                item.classList.add("active");
                // You can load the chat messages for the selected chat here.
            });
        });

        sendButton.addEventListener("click", () => {
            const messageText = messageInput.value;
            if (messageText.trim() !== "") {
                const newMessage = document.createElement("div");
                newMessage.classList.add("message");
                newMessage.classList.add("you");
                newMessage.innerHTML = `
                    <div class="avatar">Y</div>
                    <span class="sender">You:</span> ${messageText}
                    <div class="timestamp">${getTimestamp()}</div>
                `;
                messageBox.appendChild(newMessage);
                messageInput.value = "";
                messageBox.scrollTop = messageBox.scrollHeight;
            }
        });

        function getTimestamp() {
            const now = new Date();
            const hours = now.getHours().toString().padStart(2, '0');
            const minutes = now.getMinutes().toString().padStart(2, '0');
            return `${hours}:${minutes}`;
        }
    </script>
</body>
</html>

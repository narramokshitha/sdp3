<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>
    <div class="main">
        <p class="sign" align="center">Forgot password?</p>
        <form class="form1">
            <input class="un" type="password" align="center" placeholder="New Password">
            <input class="un" type="password" align="center" placeholder="Confirm Password">
            <p class="submit" align="center"><button type="button" onclick="resetPassword()">Reset</button></p>
        </form>
        <p id="resetMessage" style="display: none; text-align: center; color: green;">Password reset successful</p>
    </div>

    <script>
        function resetPassword() {
            // Assuming the reset is successful, display the success message
            document.getElementById("resetMessage").style.display = "block";
        }
    </script>
</body>
</html>

<style>
body {
        background-color: #F3EBF6;
        font-family: 'Ubuntu', sans-serif;
    }
    
    .main {
        background-color: #FFFFFF;
        width: 400px;
        height: 350px;
        margin: 7em auto;
        border-radius: 1.5em;
        box-shadow: 0px 11px 35px 2px rgba(0, 0, 0, 0.14);
    }
    
    .sign {
        padding-top: 40px;
        color: #8C55AA;
        font-family: 'Ubuntu', sans-serif;
        font-weight: bold;
        font-size: 23px;
    }
    
    .un {
    width: 76%;
    color: rgb(38, 50, 56);
    font-weight: 700;
    font-size: 14px;
    letter-spacing: 1px;
    background: rgba(136, 126, 126, 0.04);
    padding: 10px 20px;
    border: none;
    border-radius: 20px;
    outline: none;
    box-sizing: border-box;
    border: 2px solid rgba(0, 0, 0, 0.02);
    margin-bottom: 50px;
    margin-left: 46px;
    text-align: center;
    margin-bottom: 27px;
    font-family: 'Ubuntu', sans-serif;
    }
    
    form.form1 {
        padding-top: 20px;
    }
    
    .un:focus {
        border: 2px solid rgba(0, 0, 0, 0.18) !important;
        
    }
    
    .submit button {
    cursor: pointer;
    border-radius: 20px; /* Increase the border-radius for a rounder button */
    color: #fff;
    background: linear-gradient(to right, #9C27B0, #E040FB);
    border: none;
    padding: 10px 30px; /* Increase padding for a larger button */
    font-family: 'Ubuntu', sans-serif;
    font-size: 16px; /* Increase font size for better readability */
    box-shadow: 0 0 20px 1px rgba(0, 0, 0, 0.04);
    transition: background 0.3s ease; /* Add a smooth background transition */
}

.submit button:hover {
    background: linear-gradient(to right, #E040FB, #9C27B0); /* Change background color on hover */
}

        
    .a {
        text-shadow: 0px 0px 3px rgba(117, 117, 117, 0.12);
        color: #E1BEE7;
        text-decoration: none
    }
    
    @media (max-width: 600px) {
        .main {
            border-radius: 0px;
        }
      }
</style>
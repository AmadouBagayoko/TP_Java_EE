<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Formulaire Utilisateur</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: #f0f2f5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .form-container {
            background: white;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.1);
            width: 400px;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        label {
            display: block;
            margin: 15px 0 5px;
            color: #555;
        }

        input[type="text"], input[type="email"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 6px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            width: 100%;
            padding: 12px;
            margin-top: 20px;
            background-color: #007bff;
            border: none;
            border-radius: 6px;
            color: white;
            font-weight: bold;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="form-container">
    <h2>Formulaire</h2>
    <form action="UserServlet" method="post">
        <label for="nom">Nom :</label>
        <input type="text" name="nom" id="nom" required>

        <label for="email">Email :</label>
        <input type="email" name="email" id="email" required>

        <input type="submit" value="Envoyer">
    </form>
</div>

</body>
</html>

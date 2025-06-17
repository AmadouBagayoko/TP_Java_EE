<%@ page isErrorPage="true" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Erreur</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #ffe6e6;
            padding: 50px;
            color: #990000;
        }
        .error-box {
            background-color: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.2);
            max-width: 600px;
            margin: auto;
        }
        h1 {
            color: #cc0000;
        }
        p {
            font-size: 18px;
        }
        .details {
            margin-top: 20px;
            color: #555;
        }
    </style>
</head>
<body>
    <div class="error-box">
        <h1>Une erreur s'est produite</h1>
        <p>Nous sommes désolés, une erreur interne a été détectée dans l'application.</p>

        <div class="details">
            <p><strong>Message d'erreur :</strong> ${exception.message}</p>
            <p><strong>Type :</strong> ${pageContext.errorData.throwable.class.name}</p>
            <p><strong>Code HTTP :</strong> ${pageContext.errorData.statusCode}</p>
        </div>
    </div>
</body>
</html>

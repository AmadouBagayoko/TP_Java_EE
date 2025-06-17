<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*, model.User" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Détails Utilisateur</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #eef1f5;
            padding: 40px;
        }

        .container {
            max-width: 900px;
            margin: auto;
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 30px;
        }

        .card {
            background-color: white;
            border-radius: 12px;
            padding: 30px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #333;
            margin-bottom: 15px;
            font-size: 22px;
        }

        p {
            font-size: 16px;
            color: #555;
            margin: 8px 0;
        }

        ul {
            list-style-type: none;
            padding: 0;
        }

        ul li {
            background-color: #f5f5f5;
            padding: 12px;
            border-radius: 6px;
            margin-bottom: 10px;
        }

        .button {
            display: inline-block;
            margin-top: 20px;
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 6px;
            transition: background 0.3s ease;
        }

        .button:hover {
            background-color: #0056b3;
        }

        @media (max-width: 768px) {
            .container {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>

<%
    User user = (User) session.getAttribute("user");
    List<User> listeUsers = (List<User>) session.getAttribute("listeUsers");

    if (user == null) {
        response.sendRedirect("userForm.jsp");
        return;
    }
%>

<div class="container">
    <div class="card">
        <h2>Informations de l'utilisateur</h2>
        <p><strong>Nom :</strong> <%= user.getNom() %></p>
        <p><strong>Email :</strong> <%= user.getEmail() %></p>
        <a href="UserServlet" class="button">Retour au formulaire</a>
    </div>

    <div class="card">
        <h2>Utilisateurs enregistrés</h2>
        <ul>
        <%
            if (listeUsers != null && !listeUsers.isEmpty()) {
                for (User u : listeUsers) {
        %>
            <li><strong><%= u.getNom() %></strong> — <%= u.getEmail() %></li>
        <%
                }
            } else {
        %>
            <li>Aucun utilisateur enregistré.</li>
        <%
            }
        %>
        </ul>
    </div>
</div>

</body>
</html>

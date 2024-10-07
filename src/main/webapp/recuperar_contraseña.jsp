<%-- 
    Document   : retablecer_contraseña
    Created on : 31/07/2024, 5:39:23 p. m.
    Author     : jedab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Olvidé mi contraseña</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background: url('img/upload-816230812391.png') no-repeat center center fixed;
            background-size: cover;
        }

        .container {
            background-color: #000;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
        }

        .logo {
            width: 100px;
            height: auto;
            margin-bottom: 20px;
        }

        h1 {
            color: #bbff00;
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
            
        }

        label {
            margin-bottom: 8px;
            color: #bbff00;
            text-align: left;
        }

        input[type="email"] {
            padding: 10px;
            margin-bottom: 16px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        button {
            padding: 10px;
            background-color: #007bff;
            border: none;
            border-radius: 4px;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }

        #message {
            margin-top: 20px;
            color: #d9534f;
        }
    </style>
</head>
<body>
    <div class="container">
        <img src="img/0002.jpg" alt="Logo" class="logo">
        <h1>Recuperar contraseña</h1>
        <form id="forgotPasswordForm">
            <label for="email">Correo electrónico:</label>
            <input type="email" id="email" name="email" required>
            <button type="submit">Enviar</button>
        </form>
        <p id="message"></p>
    </div>

    <script>
        document.getElementById('forgotPasswordForm').addEventListener('submit', function(event) {
            event.preventDefault();
            const email = document.getElementById('email').value;
            fetch('/forgot-password', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ email: email })
            })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    document.getElementById('message').innerText = 'Se ha enviado un enlace para restablecer la contraseña a tu correo electrónico.';
                } else {
                    document.getElementById('message').innerText = 'Hubo un problema. Por favor, intenta nuevamente.';
                }
            })
            .catch(error => {
                console.error('Error:', error);
                document.getElementById('message').innerText = 'Hubo un problema. Por favor, intenta nuevamente.';
            });
        });
    </script>
</body>
</html>

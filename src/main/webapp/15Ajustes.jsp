<%-- 
    Document   : 15Ajustes
    Created on : 8/10/2024, 9:39:44 p. m.
    Author     : jedab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Ajustes del Sistema - SEDO-CRA</title>
        <style>
            body {
                font-family: 'Times New Roman', Times, serif;
                margin: 0;
                padding: 0;
                background-image: url('img/upload-816230812391.png');
                background-size: cover; /* Ajusta el tamaño de la imagen al área completa */
                background-position: center; /* Centra la imagen */
                background-repeat: no-repeat; /* Evita que la imagen se repita */
                background-attachment: fixed; /* Fija la imagen al fondo de la página */
            }
            .system-settings-container {
                max-width: 1200px;
                margin: 40px auto;
                padding: 20px;
                background-color: rgba(244, 244, 244, 0.9); /* Fondo semitransparente */
                border-radius: 10px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }
            header {
                display: flex;
                justify-content: space-between;
                align-items: center;
                margin-bottom: 20px;
            }
            header img {
                width: 100px;
            }
            header h1 {
                font-size: 24px;
                color: #333;
            }
            .admin-info {
                display: flex;
                align-items: center;
            }
            .admin-info span {
                margin-right: 15px;
                font-size: 16px;
                color: #555;
            }
            .admin-info button {
                padding: 8px 12px;
                background-color: #d9534f;
                color: #fff;
                border: none;
                border-radius: 5px;
                cursor: pointer;
            }
            .settings-sections {
                display: grid;
                grid-template-columns: repeat(2, 1fr);
                gap: 20px;
            }
            .section-card {
                background-color: #fff;
                padding: 15px;
                border-radius: 10px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }
            .section-card h2 {
                font-size: 20px;
                color: #007BFF;
                margin-bottom: 10px;
            }
            .section-card button {
                padding: 8px 12px;
                background-color: #007BFF;
                color: #fff;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                margin-right: 10px;
            }
            table {
                width: 100%;
                border-collapse: collapse;
                margin-top: 10px;
            }
            table th, table td {
                border: 1px solid #ddd;
                padding: 8px;
                text-align: left;
            }
            table th {
                background-color: #007BFF;
                color: #fff;
            }
            footer {
                text-align: right;
                margin-top: 20px;
            }
            footer button {
                padding: 10px 20px;
                background-color: #007BFF;
                color: #fff;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                margin-right: 10px;
            }
            footer .cancel-btn {
                background-color: #d9534f;
            }
        </style>
    </head>
    <body>

        <div class="system-settings-container">
            <header>
                <img src="img/Logo02.jpg" alt="Logo del Sistema">
                <h1>Ajustes del Sistema</h1>
                <div class="admin-info">
                    <span>Bienvenido, Admin</span>
                    <button>Cerrar sesión</button>
                </div>
            </header>

            <section class="settings-sections">
                <div class="section-card">
                    <h2>Gestión de Usuarios</h2>
                    <button>Agregar Usuario</button>
                    <button>Modificar Usuario</button>
                    <button>Eliminar Usuario</button>
                    <table>
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Nombre</th>
                                <th>Rol</th>
                                <th>Estado</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- Filas dinámicas de usuarios -->
                            <tr>
                                <td>1</td>
                                <td>Juan Pérez</td>
                                <td>Administrador</td>
                                <td>Activo</td>
                                <td>
                                    <button>Editar</button>
                                    <button>Eliminar</button>
                                </td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Maria Gómez</td>
                                <td>Empleado</td>
                                <td>Activo</td>
                                <td>
                                    <button>Editar</button>
                                    <button>Eliminar</button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <div class="section-card">
                    <h2>Configuración del Sistema</h2>
                    <label for="impuesto">Impuesto actual (%)</label>
                    <input type="number" id="impuesto" name="impuesto" value="19" style="display:block; margin-top: 10px;">
                    <button style="margin-top: 10px;">Guardar Configuración</button>
                </div>

                <div class="section-card">
                    <h2>Gestión de Base de Datos</h2>
                    <button>Hacer Backup</button>
                    <button>Restaurar Backup</button>
                    <button>Eliminar Datos</button>
                </div>

                <div class="section-card">
                    <h2>Ajustes de Notificaciones</h2>
                    <label><input type="checkbox"> Notificaciones por correo</label><br>
                    <label><input type="checkbox"> Notificaciones en tiempo real</label>
                </div>
            </section>

            <footer>
                <button class="save-btn">Guardar Cambios</button>
                <button class="cancel-btn">Cancelar</button>
            </footer>
        </div>

    </body>
</html>


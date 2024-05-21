<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/aplicacion">
    <html lang="es">
      <head>
        <title>Aplicación</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
      </head>
      <body>
        <div class="container-fluid">
          <h1>Aplicación</h1>
          <table class="table table-striped fs-3">
            <thead>
              <tr>
                <th>Perfil</th>
                <th>Nombre</th>
                <th>Teléfono</th>
                <th>Edad</th>
              </tr>
            </thead>
            <tbody>
              <xsl:apply-templates select="resultado"/>
            </tbody>
          </table>
          <a class="btn btn-primary" href="anadir.html">Nuevo Usuario</a>
          <a class="btn btn-primary" href="anadirperfil.html">Nuevo Perfil</a>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="resultado">
    <tr>
      <td><a href="perfil.php?nombre={nombre}"><xsl:value-of select="perfil/@nombre"/></a></td>      
      <td><a href="contacto.php?correo={correo}"><xsl:value-of select="nombre/@nombre"/></a></td>
      <td><xsl:value-of select="telefono/@tlf"/></td>
      <td><xsl:value-of select="edad/@edad"/></td>
      <td><a class='btn btn-danger' href='?correo={correo}'>Borrar</a></td>

    </tr>
  </xsl:template>

</xsl:stylesheet>

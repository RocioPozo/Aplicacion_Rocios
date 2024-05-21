<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
  <xsl:template match="/usuario"> 
    <html lang="es"> 
      <head> 
        <title>Aplicación</title> 
        <meta charset="utf-8" /> 
        <meta name="viewport" content="width=device-width, initial-scale=1" /> 
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" /> 
      </head> 
      <body> 
        <div class="container-fluid"> 
          <h1><xsl:value-of select="@nombre"/> <xsl:value-of select="@ap1"/> <xsl:value-of select="@ap2"/></h1> 
          <table class="table fs-3"> 
	    <tr><th>Perfil</th><td><xsl:value-of select="@perfil"/></td></tr>
	    <tr><th>Estudios</th><td><xsl:value-of select="@estudios"/></td></tr>
	    <tr><th>Correo</th><td><xsl:value-of select="@correo"/></td></tr>
 	    <tr><th>Edad</th><td><xsl:value-of select="@edad"/></td></tr>
          </table> 
        </div> 
      </body> 
    </html> 
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script> 
  </xsl:template> 
</xsl:stylesheet>

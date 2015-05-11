<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <title>Ejer05</title>
        <style type="text/css">
          .titulo{
            color: red;
          }
        </style>
      </head>
      <body>
        <h1>CD catalog</h1>
        <ol>
          <xsl:for-each select="//cd">
            <li>
              <div class="titulo">
                <xsl:value-of select="title"/>
              </div>
              <xsl:value-of select="artist"/>
              <xsl:text>,                     </xsl:text>
              <xsl:value-of select="year"/>
              <br/>
              <xsl:text>$</xsl:text>
              <xsl:value-of select="price"/>
            </li>
            <br/>
          </xsl:for-each>
        </ol>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>

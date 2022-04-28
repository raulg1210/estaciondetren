<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet  [
<!ENTITY nbsp   "&#160;">
<!ENTITY copy   "&#169;">
<!ENTITY reg    "&#174;">
<!ENTITY trade  "&#8482;">
<!ENTITY mdash  "&#8212;">
<!ENTITY ldquo  "&#8220;">
<!ENTITY rdquo  "&#8221;"> 
<!ENTITY pound  "&#163;">
<!ENTITY yen    "&#165;">
<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
    <xsl:template match="/">
        
        <html lang="en">
            
            <head>
                <title>Estacion de Talavera</title>
                <!-- Required meta tags -->
                <meta charset="utf-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
                
                <!-- Bootstrap CSS -->
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
            </head>
            
            <body>
                <div class="container shadow p-0">
                    <header>
                        <h1 class="text-center text-white bg-success py-3 m-0">Estaciones de Tren Azarquiel</h1>
                    </header>
                    <xsl:for-each select="estacion">
                        <h3 class="text-center py-3 bg-dark text-white"><xsl:value-of select="@nombre"/></h3>
                    </xsl:for-each>
                    
                    <div class="row justify-content-center mb-3">
                        <div class="col-md-6 text-center">
                            <button class="btn ml-5"
                                    onclick="document.getElementById('salidas').style.display = 'flex';document.getElementById('llegadas').style.display = 'none';">
                                <h2><strong>Salidas</strong></h2>
                            </button>
                        </div>
                        <div class="col-md-6 text-center">
                            <button class="btn mr-5"
                                    onclick="document.getElementById('llegadas').style.display = 'flex';document.getElementById('salidas').style.display = 'none';">
                                <h2><strong>Llegadas</strong></h2>
                            </button>
                        </div>
                    </div>
                    <div class="row justify-content-center" id="llegadas">
                        <xsl:for-each select="estacion/llegadas/llegada">
                            <div class="col-md-5 mb-3">
                                <div class="card">
                                    <div class="card-body">
                                        <h6><strong>Hora de llegada</strong></h6>
                                        <p class="card-text"><xsl:value-of select="horadellegada"/></p>
                                        <xsl:for-each select="origen">
                                            <div class="row justify-content-center">
                                                <div class="col-md-6">
                                                    <h6><strong>Estacion</strong></h6>
                                                    <p class="card-text"><xsl:value-of select="nombre"/></p>
                                                </div>
                                                <div class="col-md-6">
                                                    <img class="img-fluid" src="https://www.adif.es/documents/{imagen}" alt=""/>
                                                </div>
                                            </div>
                                        </xsl:for-each>
                                        <h6><strong>Tren</strong></h6>
                                        <p class="card-text"><xsl:value-of select="tren"/></p>
                                        <h6><strong>Via</strong></h6>
                                        <p class="card-text"><xsl:value-of select="via"/></p>
                                    </div>
                                </div>
                            </div>
                        </xsl:for-each>
                    </div>
                    
                    
                    <div class="row justify-content-center" id="salidas">
                        <xsl:for-each select="estacion/salidas/salida">
                            <div class="col-md-5 mb-3">
                                <div class="card">
                                    <div class="card-body">
                                        <h6><strong>Hora de salida</strong></h6>
                                        <p class="card-text"><xsl:value-of select="horadesalida"/></p>
                                        <xsl:for-each select="origen">
                                            <div class="row justify-content-center">
                                                <div class="col-md-6">
                                                    <h6><strong>Estacion</strong></h6>
                                                    <p class="card-text"><xsl:value-of select="nombre"/></p>
                                                </div>
                                                <div class="col-md-6">
                                                    <img class="img-fluid" src="https://www.adif.es/documents/{imagen}" alt=""/>
                                                </div>
                                            </div>
                                        </xsl:for-each>
                                        <h6><strong>Tren</strong></h6>
                                        <p class="card-text"><xsl:value-of select="tren"/></p>
                                        <h6><strong>Via</strong></h6>
                                        <p class="card-text"><xsl:value-of select="via"/></p>
                                    </div>
                                </div>
                            </div>
                        </xsl:for-each>
                    </div>
                    <footer>
                        <h2 class="text-white text-center bg-success m-0 py-3">S1-DAW 2022</h2>
                    </footer>
                </div>
                
                <!-- Optional JavaScript -->
                <!-- jQuery first, then Popper.js, then Bootstrap JS -->
                <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
                        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
                        crossorigin="anonymous"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
                        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
                        crossorigin="anonymous"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
                        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
                        crossorigin="anonymous"></script>
            </body>
            
        </html>
        
    </xsl:template>
</xsl:stylesheet>
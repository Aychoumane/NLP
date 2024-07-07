<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" version="4.01" encoding="UTF-8" doctype-public="-//W3C//DTD HTML 4.01//EN" doctype-system="http://www.w3.org/TR/html4/strict.dtd"/>

<xsl:template match="/">
	<html lang="fr">
		<head>
			<title>Filmographie</title>
		</head>
		<body>
		<h1>Les films</h1>
		<ol>
		<xsl:for-each select="films/film">
			<li> 
				<h2><xsl:value-of select="titre/text()"/> :</h2>
			</li>
			
			<p>Ce film sortie en <xsl:value-of select="annee_sortie/text()"/> réalisé par <xsl:value-of select="realisateur/text()"/> fait par les acteurs suivant : </p>
			<ul>
				<xsl:for-each select="acteurs/acteur">
					<li>
						<xsl:value-of select="./text()"/>
					</li>
				</xsl:for-each>
			</ul>
			<p> Synopsis : <xsl:value-of select="synopsis/text()"/></p>
	
		
		</xsl:for-each>
	</ol>
		</body>
	</html>
</xsl:template>

</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" version="4.01" encoding="UTF-8" doctype-public="-//W3C//DTD HTML 4.01//EN" doctype-system="http://www.w3.org/TR/html4/strict.dtd"/>

<xsl:template match="/">
		<html lang="fr">
			<head>
				<title>Crèmes</title>
			</head>
			<body>
				<h1>Les crèmes</h1>
				<ol>
					<xsl:for-each select="cremes/creme">
						<li> 
							<h2><xsl:value-of select="marque/text()"/> :</h2>
						</li>
					
						<p>Cette crème offre une quantité de <xsl:value-of select="quantite/text()"/>, avec sa texture <xsl:value-of select="texture/text()"/>, elle s'applique sur <xsl:value-of select="zone_corps/text()"/> et protège contre les <xsl:value-of select="type_uv/text()"/>. Les bienfaits de cette crème sont : </p>
						<ul>
							<xsl:for-each select="bienfait">
								<li>
									<xsl:value-of select="./text()"/>
								</li>
							</xsl:for-each>
						</ul>	
					</xsl:for-each>
				</ol>
			</body>
		</html>
</xsl:template>

</xsl:stylesheet>
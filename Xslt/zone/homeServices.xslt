<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <section class="home-services">
				<div class="container"> 
					<h2 class="main-title"><xsl:value-of disable-output-escaping="yes" select="ZoneList/ModuleTitle"></xsl:value-of></h2>
					<div class="home-services__list">
						<xsl:apply-templates select="ZoneList/Zone/Zone"></xsl:apply-templates>
					</div>
				</div>
			</section>
    </xsl:template>
    <xsl:template match="Zone">
        <div class="home-services__item"> <a class="box-img">
            <xsl:attribute name="href">
                <xsl:value-of select="Url"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="title">
                <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
            <img class="lazyload blur-up">
            <xsl:attribute name="src">
                <xsl:value-of select="ImageUrl"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="alt">
                <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
            </img>
			<h3 class="title"><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h3></a></div>
    </xsl:template>

</xsl:stylesheet>
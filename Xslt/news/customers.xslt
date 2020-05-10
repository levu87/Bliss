<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <xsl:apply-templates select="ZoneList/Zone"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone">
        <div class="customer">
				<div class="container"> 
					<div class="tag-line">
						<h2 class="main-title"><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h2>
						<p><xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of></p>
					</div>
					<div class="customer__list">
						<xsl:apply-templates select="News"></xsl:apply-templates>
						
					</div>
				</div>
			</div>
    </xsl:template>
    <xsl:template match="News">
        <div class="customer__item"> <a class="box-img">
        
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
         </a></div>
    </xsl:template>

</xsl:stylesheet>
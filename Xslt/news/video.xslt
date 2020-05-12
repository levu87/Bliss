<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <div class="video">
				<div class="container"> 
					<h2 class="main-title"><xsl:value-of disable-output-escaping="yes" select="NewsList/ZoneTitle"></xsl:value-of></h2>
					<div class="video__list"> 
						<xsl:apply-templates select="NewsList/News"></xsl:apply-templates>
						
					</div>
				</div>
			</div>
    </xsl:template>
    <xsl:template match="News">
        <div class="video__item">
         <a data-fancybox="video">
            <xsl:attribute name="href">
                <xsl:value-of select="SubTitle"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="title">
                <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
            <figure>                         
                <div class="image">
                    <img class="lazyload blur-up">
                    <xsl:attribute name="src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    </img>
                </div>
                <figcaption>
                    <div class="play-btn"> <em class="mdi mdi-play"></em></div>
                    <div class="title"><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></div>
                </figcaption>
            </figure></a>
            <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
            </div>
    </xsl:template>

</xsl:stylesheet>
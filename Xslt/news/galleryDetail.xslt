<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="gallery-detail">
            <div class="container">
				<xsl:apply-templates select="/NewsList/News" mode="News1"></xsl:apply-templates>
                
                <div class="fullcontent">
                    <div class="list-image">
						<xsl:apply-templates select="/NewsList/News" mode="News2"></xsl:apply-templates>
                        
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
	<xsl:template match="News" mode="News1">
		<xsl:if test="position()=1">
			<div class="head" setBackground="./img/blog-1.png">
				<xsl:attribute name="setBackground">
					<xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
				<div class="subtitle"><xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of></div>
				<div class="title"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></div>
				<p class="briefcontent">
					<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
				</p>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode="News2">
		<xsl:if test="position()&gt;1">
			<a class="box-img" >
				<!-- <xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute> -->
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<img class="">
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
			</a>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
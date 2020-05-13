<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="gallery-detail">
            <div class="container">
				<div class="head" setBackground="./img/blog-1.png">
                    <xsl:attribute name="setBackground">
                        <xsl:value-of select="/NewsDetail/NewsImages[1]/ImageUrl" disable-output-escaping="yes"></xsl:value-of>
                    </xsl:attribute>
                    <div class="subtitle"><xsl:value-of select="/NewsDetail/SubTitle" disable-output-escaping="yes"></xsl:value-of></div>
                    <div class="title"><xsl:value-of select="/NewsDetail/Title" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of></div>
                    
                    <p class="briefcontent">
                        <xsl:value-of select="/NewsDetail/BriefContent" disable-output-escaping="yes"></xsl:value-of>
                    </p>
                </div>
                
                <div class="fullcontent">
                    <div class="list-image">
						<xsl:apply-templates select="/NewsDetail/NewsImages"></xsl:apply-templates>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
	<xsl:template match="NewsImages">
		<xsl:if test="position()&gt;1">
			<a class="box-img" >
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
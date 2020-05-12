<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <div class="gallery-detail"> 
				<div class="container"> 
					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
					<!-- <div class="head" setBackground="./img/blog-1.png">
						<div class="subtitle"><xsl:value-of disable-output-escaping="yes" select="NewsDetail/SubTitle"></xsl:value-of></div>
						<div class="title"><xsl:value-of disable-output-escaping="yes" select="NewsDetail/Title"></xsl:value-of></div>
						<p class="briefcontent"><xsl:value-of disable-output-escaping="yes" select="NewsDetail/BriefContent"></xsl:value-of></p>
					</div>
					<div class="fullcontent"> 
						<div class="list-image">
                            <xsl:value-of disable-output-escaping="yes" select="NewsDetail/FullContent"></xsl:value-of>
                        </div>
					</div> -->
				</div>
			</div>
    </xsl:template>

</xsl:stylesheet>
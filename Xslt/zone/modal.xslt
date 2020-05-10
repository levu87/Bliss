<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <div class="modal" id="modal">
				<div class="modal-overlay"></div>
				<div class="modal-inner"> 
					<div class="close-btn"> <em class="mdi mdi-close"></em></div>
					<div class="modal-head">
						<h3><xsl:value-of disable-output-escaping="yes" select="ZoneList/ModuleTitle"></xsl:value-of></h3>
					</div>
					<div class="modal-body"> 
						<div class="list-item"> 
							<xsl:apply-templates select="ZoneList/Zone/Zone"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</div>
    </xsl:template>
    <xsl:template match="Zone">
       
        <div class="item"> 
            <div class="wrapper"><a class="box-img">
            
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
             
             </a>
                <div class="title">
                    <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </a>
                </div>
            </div>
        </div>

    </xsl:template>

</xsl:stylesheet>
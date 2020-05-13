<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <xsl:apply-templates select="/ZoneList/Zone[IsActive='true']"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone">
        <div class="view-all-btn"> 
            <a class="main-btn">
                <xsl:attribute name="href">
                    <xsl:value-of select="SecondImageUrl"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="target">
                    <xsl:value-of select="Target"></xsl:value-of>
                </xsl:attribute>
                Xem tất cả</a>
        </div>
    </xsl:template>
</xsl:stylesheet>
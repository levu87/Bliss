<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="tag-line">
        <xsl:apply-templates select="/ZoneList/Zone[IsActive='true']"></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match="Zone">
        <h2 class="main-title">
            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
        </h2>
        <div class="des">
            <xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
        </div>
    </xsl:template>
</xsl:stylesheet>
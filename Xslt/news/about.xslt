<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="about">
            <div class="container">
                <div class="tag-line">
                    <h2 class="main-title">
                        <xsl:value-of disable-output-escaping="yes" select="ZoneList/Title"></xsl:value-of>
                    </h2>
                    <xsl:apply-templates select="ZoneList/Zone" mode="Zone1"></xsl:apply-templates>
                </div>
            </div>
            <div class="about-wrapper">
                <div class="container">
                    <xsl:apply-templates select="ZoneList/Zone" mode="Zone2"></xsl:apply-templates>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Zone" mode="Zone1">
        <xsl:if test="position() = 1">
            <xsl:apply-templates select="News" mode="Zone-News11"></xsl:apply-templates>
        </xsl:if>
    </xsl:template>
    <xsl:template match="Zone" mode="Zone2">
        <xsl:if test="position() = 1">
            <xsl:apply-templates select="News" mode="Zone-News1"></xsl:apply-templates>
        </xsl:if>
        <xsl:if test="position() = 2">
            <div class="what-do-we-do">
                <h2 class="main-title">
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                </h2>
                <div class="list-item">
                    <xsl:apply-templates select="News" mode="Zone-News2"></xsl:apply-templates>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Zone-News1">
        
        <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
    </xsl:template>
    <xsl:template match="News" mode="Zone-News11">
        <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
        <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
    </xsl:template>
    <xsl:template match="News" mode="Zone-News2">
        <div class="item">
            <div class="icon">
                <img class="lazyload blur-up">
                    <xsl:attribute name="src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                </img>
            </div>
            <div class="caption">
                <p>
                    <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                </p>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
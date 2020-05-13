<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <h2 class="main-title">Các dự án đã thực hiện </h2>
        <!-- <div class="services__list"><xsl:apply-templates select="NewsList/News"></xsl:apply-templates></div> -->
        <div class="list-items">
            <xsl:apply-templates select="NewsList/News"></xsl:apply-templates>
        </div>
        <div class="view-all-btn"> <a class="main-btn">Xem tất cả</a></div>
    </xsl:template>
    <xsl:template match="News">
        <!-- <div class="services__item"><a class="box-img"><xsl:attribute name="href"><xsl:value-of select="Url"></xsl:value-of></xsl:attribute><xsl:attribute name="title"><xsl:value-of select="Title"></xsl:value-of></xsl:attribute><img class="lazyload blur-up"><xsl:attribute name="src"><xsl:value-of select="ImageUrl"></xsl:value-of></xsl:attribute><xsl:attribute name="alt"><xsl:value-of select="Title"></xsl:value-of></xsl:attribute></img></a><div class="title"><a><xsl:attribute name="href"><xsl:value-of select="Url"></xsl:value-of></xsl:attribute><xsl:attribute name="title"><xsl:value-of select="Title"></xsl:value-of></xsl:attribute><xsl:attribute name="target"><xsl:value-of select="Target"></xsl:value-of></xsl:attribute><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></a></div></div> -->
        <div class="item">
            <a class="box-img">
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
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
            <div class="title">
                <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="target">
                        <xsl:value-of select="Target"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                </a>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
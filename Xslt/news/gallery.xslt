<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <xsl:apply-templates select="ZoneList/Zone"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone">
        <div>
            <xsl:attribute name="class">
                <xsl:text disable-output-escaping="yes">section gallery__content gallery__content-</xsl:text>
                <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="id">
                <xsl:text disable-output-escaping="yes">section-</xsl:text>
                <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
            </xsl:attribute>
            <div class="box-content">
                <div class="container">
                    <div class="box-content__content">
                        <div class="img">
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
                                <img class="lazyload blur-up">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                                    </xsl:attribute>
                                    <xsl:attribute name="alt">
                                        <xsl:value-of select="Title"></xsl:value-of>
                                    </xsl:attribute>
                                </img>
                            </a>
                        </div>
                        <div class="title">
                            <span></span>
                            <a>
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="box-content__inner-slider">
                    <div class="container">
                        <div class="slider">
                            <div class="swiper-container">
                                <div class="swiper-wrapper">
                                    <xsl:apply-templates select="News" mode="Zone-News"></xsl:apply-templates>
                                </div>
                            </div>
                            <div class="swiper-nav">
                                <div class="button-prev">
                                    <em class="mdi mdi-chevron-left"></em>
                                </div>
                                <div class="button-next">
                                    <em class="mdi mdi-chevron-right"></em>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Zone-News">
        <div class="swiper-slide">
            <a class="box-img">
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
        </div>
    </xsl:template>
</xsl:stylesheet>
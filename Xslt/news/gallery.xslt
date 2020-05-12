<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <xsl:apply-templates select="ZoneList/Zone"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone">
        <xsl:if test="position()= 1">
            <div class="section gallery__content gallery__content-1" id="section-1">
                <div class="box-content"> 
                    <div class="container">
                        <div class="box-content__content"> 
                            <div class="img">
                                <img class="lazyload blur-up">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="alt">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                </img>
                            </div>
                            <div class="title"> <span></span><a>
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </a></div>
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
                                    <div class="button-prev"><em class="lnr lnr-chevron-left"></em></div>
                                    <div class="button-next"><em class="lnr lnr-chevron-right"></em></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="position()= 2">
            <div class="section gallery__content gallery__content-2" id="section-2">
                <div class="box-content"> 
                    <div class="container">
                        <div class="box-content__content"> 
                            <div class="img">
                                <img class="lazyload blur-up">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="alt">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                </img>
                            </div>
                            <div class="title"> <span></span><a>
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </a></div>
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
                                    <div class="button-prev"><em class="lnr lnr-chevron-left"></em></div>
                                    <div class="button-next"><em class="lnr lnr-chevron-right"></em></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="position()= 3">
            <div class="section gallery__content gallery__content-3" id="section-3">
                <div class="box-content"> 
                    <div class="container">
                        <div class="box-content__content"> 
                            <div class="img">
                                <img class="lazyload blur-up">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="alt">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                </img>
                            </div>
                            <div class="title"> <span></span><a>
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </a></div>
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
                                    <div class="button-prev"><em class="lnr lnr-chevron-left"></em></div>
                                    <div class="button-next"><em class="lnr lnr-chevron-right"></em></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="position()= 4">
            <div class="section gallery__content gallery__content-4" id="section-4">
                <div class="box-content"> 
                    <div class="container">
                        <div class="box-content__content"> 
                            <div class="img">
                                <img class="lazyload blur-up">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="alt">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                </img>
                            </div>
                            <div class="title"> <span></span><a>
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </a></div>
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
                                    <div class="button-prev"><em class="lnr lnr-chevron-left"></em></div>
                                    <div class="button-next"><em class="lnr lnr-chevron-right"></em></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="position()= 5">
            <div class="section gallery__content gallery__content-5" id="section-5">
                <div class="box-content"> 
                    <div class="container">
                        <div class="box-content__content"> 
                            <div class="img">
                                <img class="lazyload blur-up">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="alt">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                </img>
                            </div>
                            <div class="title"> <span></span><a>
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </a></div>
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
                                    <div class="button-prev"><em class="lnr lnr-chevron-left"></em></div>
                                    <div class="button-next"><em class="lnr lnr-chevron-right"></em></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="position()= 6">
            <div class="section gallery__content gallery__content-6" id="section-6">
                <div class="box-content"> 
                    <div class="container">
                        <div class="box-content__content"> 
                            <div class="img">
                                <img class="lazyload blur-up">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="alt">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                </img>
                            </div>
                            <div class="title"> <span></span><a>
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </a></div>
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
                                    <div class="button-prev"><em class="lnr lnr-chevron-left"></em></div>
                                    <div class="button-next"><em class="lnr lnr-chevron-right"></em></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </xsl:if>
        
    </xsl:template>
    <xsl:template match="News" mode="Zone-News">
        <div class="swiper-slide"> <a class="box-img">
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
        </a></div>
    </xsl:template>

</xsl:stylesheet>
<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <section class="home-banner"> 
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
					</div>
				</div>
			</section>
  </xsl:template>
  <xsl:template match="Banner">
    <div class="swiper-slide"><a class="box-img">
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
      <div class="swiper-nav container">
        <div class="button-prev"><em class="lnr lnr-chevron-left"></em></div>
        <div class="button-next"><em class="lnr lnr-chevron-right"></em></div>
      </div></a>
    <div class="banner-text-wrap">
      <div class="container"> 
        <xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
        <div class="view-all-btn"> <a class="main-btn">
          <xsl:attribute name="href">
            <xsl:value-of select="Url"></xsl:value-of>
          </xsl:attribute>
          <xsl:attribute name="title">
            <xsl:value-of select="Title"></xsl:value-of>
          </xsl:attribute>
          <xsl:text disable-output-escaping="yes">Xem tất cả</xsl:text>
          </a></div>
      </div>
    </div>
  </div>
  </xsl:template>

</xsl:stylesheet>
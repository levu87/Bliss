<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <div class="blog-detail">
				<div class="container">
					<div class="head"> 
						<h2 class="title"><xsl:value-of disable-output-escaping="yes" select="NewsDetail/Title"></xsl:value-of></h2>
						<date> <em class="mdi mdi-calendar-today"></em><xsl:value-of disable-output-escaping="yes" select="NewsDetail/CreatedDate"></xsl:value-of></date>
					</div>
					<div class="fullcontent"> 
						<xsl:value-of disable-output-escaping="yes" select="NewsDetail/FullContent"></xsl:value-of>
					</div>
				</div>
			</div>
			<div class="blog-other"> 
                 <xsl:if test="count(/NewsDetail/NewsOther) &gt; 0">
				<h2 class="main-title">bài viết khác</h2>
				<div class="blog-other__inner">
					<div class="container"> 
						<div class="blog-other__slider">
							<div class="swiper-container"> 
								<div class="swiper-wrapper"> 
									
									<xsl:apply-templates select="NewsDetail/NewsOther"></xsl:apply-templates>
								</div>
							</div>
							<div class="swiper-nav">
								<div class="button-prev"><em class="lnr lnr-chevron-left"></em></div>
								<div class="button-next"><em class="lnr lnr-chevron-right"></em></div>
							</div>
						</div>
					</div>
                </div>
            </xsl:if>
                
			</div>
    </xsl:template>
    <xsl:template match="NewsOther">
        <div class="swiper-slide"> 
            <div class="item"> <a class="box-img">
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
                    <h3 class="title"><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h3></a></div>
        </div>
    </xsl:template>

</xsl:stylesheet>
<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <div class="contact__info"> 
            <p>Vui lòng hẹn lịch trước khi đến qua email hoặc số điện thoại</p>
            <div class="wrapper"> 
                <xsl:apply-templates select="NewsList/News"></xsl:apply-templates>
            </div>
            <div class="timework">Giờ làm việc <span>Từ thứ 2 đến thứ 6, 9:00 - 18:30</span></div>
        </div>
    </xsl:template>
    <xsl:template match="News">
        <div class="box">
            <li> <strong><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></strong></li>
            <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
        </div>
                
    </xsl:template>

</xsl:stylesheet>
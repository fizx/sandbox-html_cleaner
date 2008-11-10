<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 <xsl:output method="xml" indent="yes"/>
 <xsl:strip-space elements="*"/>
	<xsl:template match="node()|@*">
	  <xsl:choose>
		<xsl:when test="translate(name(), 'SCRIPT', 'script')='script'">	
		</xsl:when>
		<xsl:when test="starts-with(translate(name(), 'ON', 'on'), 'on')">	
		</xsl:when>
		<xsl:when test="text()">	
			<xsl:value-of select="normalize-space()" />
		</xsl:when>
		<xsl:otherwise>
		  <xsl:copy>
		    <xsl:apply-templates select="@*|node()" />
		  </xsl:copy>
		</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>
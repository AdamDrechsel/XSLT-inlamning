<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
	<html lang="en">
	<head>
	<link rel="stylesheet" href="inlamning2.css" type="text/css" />
		<title>XML-inlämning</title>
	</head>
	<body>
		<xsl:apply-templates/>
	</body>
	</html>
</xsl:template>
<xsl:template match="char">
    <h2>Class: <xsl:value-of select="@id" /></h2>
	<dl>
		<dt>Race :</dt>
		<dd id="ras"><xsl:value-of select="./race" /></dd>
		<dt>Role :</dt>
		<dd><xsl:value-of select="./role" /></dd>
	    <xsl:apply-templates select="./specs" />
	</dl>
</xsl:template>
<xsl:template match="specs">
    <dt>Specs:</dt>
      <xsl:apply-templates select="./spec" />
</xsl:template>
<xsl:template match="spec">
  <dd>
     <xsl:apply-templates select="name" />
     <xsl:apply-templates select="ability" />
  </dd>
</xsl:template>
<xsl:template match="name">
     <h2>Name: <xsl:value-of select="."/></h2>
</xsl:template>
<xsl:template match="ability">
     <p>Ability: <xsl:value-of select="."/></p>
</xsl:template>

</xsl:stylesheet>
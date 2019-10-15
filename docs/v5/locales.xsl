<?xml version="1.0" encoding="UTF-8"?>

<!--
当前文件实现了简单的翻译功能

将所有支持的本地化信息都输出到 HTML，但只显示与当前语言相关联的那一条。
-->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="languages">
    <li lang="zh-hans">
        <label><input type="radio" name="lang" checked="{$curr-lang='zh-hans'}" />简体中文</label>
    </li>

    <li lang="zh-hant">
        <label><input type="radio" name="lang" checked="{$curr-lang='zh-hant'}" />繁體中文</label>
    </li>
</xsl:template>

<!-- language -->
<xsl:variable name="locale-language">
    <xsl:call-template name="build-locale">
        <xsl:with-param name="lang" select="'zh-hans'" />
        <xsl:with-param name="text" select="'语言'" />
    </xsl:call-template>

    <xsl:call-template name="build-locale">
        <xsl:with-param name="lang" select="'zh-hant'" />
        <xsl:with-param name="text" select="'語言'" />
    </xsl:call-template>
</xsl:variable>

<!-- tag -->
<xsl:variable name="locale-tag">
    <xsl:call-template name="build-locale">
        <xsl:with-param name="lang" select="'zh-hans'" />
        <xsl:with-param name="text" select="'标签'" />
    </xsl:call-template>

    <xsl:call-template name="build-locale">
        <xsl:with-param name="lang" select="'zh-hant'" />
        <xsl:with-param name="text" select="'標簽'" />
    </xsl:call-template>
</xsl:variable>

<!-- method -->
<xsl:variable name="locale-method">
    <xsl:call-template name="build-locale">
        <xsl:with-param name="lang" select="'zh-hans'" />
        <xsl:with-param name="text" select="'请求方法'" />
    </xsl:call-template>

    <xsl:call-template name="build-locale">
        <xsl:with-param name="lang" select="'zh-hant'" />
        <xsl:with-param name="text" select="'請求方法'" />
    </xsl:call-template>
</xsl:variable>

<!-- request -->
<xsl:variable name="locale-request">
    <xsl:call-template name="build-locale">
        <xsl:with-param name="lang" select="'zh-hans'" />
        <xsl:with-param name="text" select="'请求'" />
    </xsl:call-template>

    <xsl:call-template name="build-locale">
        <xsl:with-param name="lang" select="'zh-hant'" />
        <xsl:with-param name="text" select="'請求'" />
    </xsl:call-template>
</xsl:variable>

<!-- response -->
<xsl:variable name="locale-response">
    <xsl:call-template name="build-locale">
        <xsl:with-param name="lang" select="'zh-hans'" />
        <xsl:with-param name="text" select="'返回'" />
    </xsl:call-template>

    <xsl:call-template name="build-locale">
        <xsl:with-param name="lang" select="'zh-hant'" />
        <xsl:with-param name="text" select="'返回'" />
    </xsl:call-template>
</xsl:variable>

<!-- callback -->
<xsl:variable name="locale-callback">
    <xsl:call-template name="build-locale">
        <xsl:with-param name="lang" select="'zh-hans'" />
        <xsl:with-param name="text" select="'回调'" />
    </xsl:call-template>

    <xsl:call-template name="build-locale">
        <xsl:with-param name="lang" select="'zh-hant'" />
        <xsl:with-param name="text" select="'回調'" />
    </xsl:call-template>
</xsl:variable>

<!-- path param -->
<xsl:variable name="locale-path-param">
    <xsl:call-template name="build-locale">
        <xsl:with-param name="lang" select="'zh-hans'" />
        <xsl:with-param name="text" select="'路径参数'" />
    </xsl:call-template>

    <xsl:call-template name="build-locale">
        <xsl:with-param name="lang" select="'zh-hant'" />
        <xsl:with-param name="text" select="'路徑參數'" />
    </xsl:call-template>
</xsl:variable>

<!-- query -->
<xsl:variable name="locale-query">
    <xsl:call-template name="build-locale">
        <xsl:with-param name="lang" select="'zh-hans'" />
        <xsl:with-param name="text" select="'查询参数'" />
    </xsl:call-template>

    <xsl:call-template name="build-locale">
        <xsl:with-param name="lang" select="'zh-hant'" />
        <xsl:with-param name="text" select="'查詢參數'" />
    </xsl:call-template>
</xsl:variable>

<!-- header -->
<xsl:variable name="locale-header">
    <xsl:call-template name="build-locale">
        <xsl:with-param name="lang" select="'zh-hans'" />
        <xsl:with-param name="text" select="'报头'" />
    </xsl:call-template>

    <xsl:call-template name="build-locale">
        <xsl:with-param name="lang" select="'zh-hant'" />
        <xsl:with-param name="text" select="'報頭'" />
    </xsl:call-template>
</xsl:variable>

<!-- body -->
<xsl:variable name="locale-body">
    <xsl:call-template name="build-locale">
        <xsl:with-param name="lang" select="'zh-hans'" />
        <xsl:with-param name="text" select="'报文'" />
    </xsl:call-template>

    <xsl:call-template name="build-locale">
        <xsl:with-param name="lang" select="'zh-hant'" />
        <xsl:with-param name="text" select="'報文'" />
    </xsl:call-template>
</xsl:variable>

<!-- var -->
<xsl:variable name="locale-var">
    <xsl:call-template name="build-locale">
        <xsl:with-param name="lang" select="'zh-hans'" />
        <xsl:with-param name="text" select="'变量'" />
    </xsl:call-template>

    <xsl:call-template name="build-locale">
        <xsl:with-param name="lang" select="'zh-hant'" />
        <xsl:with-param name="text" select="'變量'" />
    </xsl:call-template>
</xsl:variable>

<!-- type -->
<xsl:variable name="locale-type">
    <xsl:call-template name="build-locale">
        <xsl:with-param name="lang" select="'zh-hans'" />
        <xsl:with-param name="text" select="'类型'" />
    </xsl:call-template>

    <xsl:call-template name="build-locale">
        <xsl:with-param name="lang" select="'zh-hant'" />
        <xsl:with-param name="text" select="'類型'" />
    </xsl:call-template>
</xsl:variable>

<!-- value -->
<xsl:variable name="locale-value">
    <xsl:call-template name="build-locale">
        <xsl:with-param name="lang" select="'zh-hans'" />
        <xsl:with-param name="text" select="'值'" />
    </xsl:call-template>

    <xsl:call-template name="build-locale">
        <xsl:with-param name="lang" select="'zh-hant'" />
        <xsl:with-param name="text" select="'值'" />
    </xsl:call-template>
</xsl:variable>

<!-- description -->
<xsl:variable name="locale-description">
    <xsl:call-template name="build-locale">
        <xsl:with-param name="lang" select="'zh-hans'" />
        <xsl:with-param name="text" select="'描述'" />
    </xsl:call-template>

    <xsl:call-template name="build-locale">
        <xsl:with-param name="lang" select="'zh-hant'" />
        <xsl:with-param name="text" select="'描述'" />
    </xsl:call-template>
</xsl:variable>

<!-- enum -->
<xsl:variable name="locale-enum">
    <xsl:call-template name="build-locale">
        <xsl:with-param name="lang" select="'zh-hans'" />
        <xsl:with-param name="text" select="'枚举'" />
    </xsl:call-template>

    <xsl:call-template name="build-locale">
        <xsl:with-param name="lang" select="'zh-hant'" />
        <xsl:with-param name="text" select="'枚舉'" />
    </xsl:call-template>
</xsl:variable>

<!-- footer -->
<xsl:variable name="locale-footer">
    <xsl:call-template name="build-locale">
        <xsl:with-param name="lang" select="'zh-hans'" />
        <xsl:with-param name="text">
            文档版权为 <a href="{apidoc/license/@url}"><xsl:value-of select="apidoc/license" /></a>。
            由 <a href="document('../config.xml')/config/url"><xsl:value-of select="document('../config.xml')/config/name" /></a> 生成于 <time><xsl:value-of select="apidoc/@created" /></time>。
        </xsl:with-param>
    </xsl:call-template>

    <xsl:call-template name="build-locale">
        <xsl:with-param name="lang" select="'zh-hant'" />
        <xsl:with-param name="text">
            文檔版權為 <a href="{apidoc/license/@url}"><xsl:value-of select="apidoc/license" /></a>。
            由 <a href="document('../config.xml')/config/url"><xsl:value-of select="document('../config.xml')/config/name" /></a> 生成於 <time><xsl:value-of select="apidoc/@created" /></time>。
        </xsl:with-param>
    </xsl:call-template>
</xsl:variable>

<xsl:template name="build-locale">
    <xsl:param name="lang" />
    <xsl:param name="text" />

    <xsl:variable name="class">
        <xsl:choose>
            <xsl:when test="$curr-lang=translate($lang, $uppercase, $lowercase)">
                <xsl:value-of select="''" />
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="'hidden'" />
            </xsl:otherwise>
        </xsl:choose>
    </xsl:variable>

    <!-- data-locale 属性表示该元素是一个本地化信息元素 -->
    <span data-locale="true" lang="{$lang}" class="{$class}"><xsl:copy-of select="$text" /></span>
</xsl:template>

<!-- 返回当前文档的语言，会转换为小写，_ 也会被转换成 - -->
<xsl:variable name="curr-lang">
    <xsl:value-of select="translate(/apidoc/@lang, $uppercase, $lowercase)" />
</xsl:variable>

<!-- 用于实现 lower-case 和 upper-case，如果将来某天浏览器支持 xsl 2.0 了，可以直接采用相关函数 -->
<xsl:variable name="lowercase" select="'abcdefghijklmnopqrstuvwxyz-'" />
<xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ_'" />

</xsl:stylesheet>


<%@ Page Title="" Language="C#" MasterPageFile="_linkContainer/HtmlPlain.Master" AutoEventWireup="true"  %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<meta itemprop="name" content="itemprop=name;content=this"/>
<meta itemprop="image" content="http://nilnul.com/app_/_nilnulCom_/_master/logo.gif" />
<meta name="description" itemprop="description" content="meta description" />
<%--	1、摘要图片，不能是https链接，最好用http （https 在android手机qq不能被获取，ios可以）2、摘要图片，不能是一个重定向地址。3、三个信息不能通过js改变（js更改摘要信息android下不生效，ios可以）服务器用php输出html是最好的4、qq有缓存机制，如果你改了摘要信息没变，可能是qq缓存了。换个地址，或者地址后面加无关后缀time=13123421321都ojbk--%>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<a href="<%=ResolveUrl("~/Loader.aspx") %>?url=<%=ResolveUrl("_linkContainer/ToBeLoaded.ascx") %>&title=your标题mayBeUrlEncodedLater" >
		ToLoad
	</a>
</asp:Content>

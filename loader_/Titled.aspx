<%@ Page Title="" Language="C#" MasterPageFile="~/_loader/Master.Master" AutoEventWireup="true" %>
<%--<%@ OutputCache Duration="3600000" VaryByCustom="l" VaryByParam="title,url,l" %>
	title is not changed when cached.
--%>

<%-- 
	given title, make the title as the title of the loaded content. 
	the loaded content may be text with sections with text.
--%>

<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_.script_.onLoad_.dollar_" TagPrefix="cc2" %>

<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_.enCn_" TagPrefix="cc1" %>



<script runat="server">
	protected void Page_Load(object sender, EventArgs e)
	{
		this.title = Request.QueryString["title4weixin"] ?? Request.QueryString["title"] ?? ("" + (Request.QueryString["url"] ?? "Nilnul"));  //or ""

	}
	public string title = "";
	public nilnul.txt.op_.unary_.Trunc trunc = new nilnul.txt.op_.unary_.Trunc(256);
	public string titleEncoded
	{
		get
		{
			return Server.HtmlEncode(title);
		}
	}

	public string titleEncodedTruncated
	{
		get
		{
			return trunc.op( titleEncoded );
		}
	}


</script>

<asp:Content ID="Content11" ContentPlaceHolderID="titleContent" runat="server">
	<%: this.titleEncodedTruncated %>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<article>
		<h1 style="position: sticky; top: 19px;">
			<%: this.titleEncoded %>
		</h1>
		<div>

			<div>
				<cc1:enCn__BySession ID="EnCn__BySession2" runat="server">
					<%--first one is english--%>
					<asp:View ID="View7" runat="server">
						Loading Contents, please wait...<br />
						If the loading is not completed in a long time, please contact us.

					</asp:View>
					<asp:View ID="View8" runat="server">
						正在加载内容，请等待...<br />
						如果长时间没有加载完成，请联系网站维护人员

					</asp:View>
				</cc1:enCn__BySession>


			</div>
			<cc2:script__onLoad__dollar__OnTypeName ID="Script__onLoad__dollar__OnTypeName1" runat="server" js="nilnul._express_._compose_._WEB_.loader_._titled.Js" />
		</div>

	</article>
</asp:Content>

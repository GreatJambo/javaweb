<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<script type="text/javascript">
/**
 * my_click和my_blur均是用于前台页面搜索框的函数
 */
//鼠标点击搜索框时执行
function my_click(obj, myid){
	//点击时，如果取得的值和搜索框默认value值相同，则将搜索框清空
	if (document.getElementById(myid).value == document.getElementById(myid).defaultValue){
	  document.getElementById(myid).value = '';
	  obj.style.color='#000';
	}
}
//鼠标不聚焦在搜索框时执行
function my_blur(obj, myid){
	//鼠标失焦时，如果搜索框没有输入值，则用搜索框的默认value值填充
	if (document.getElementById(myid).value == ''){
	 document.getElementById(myid).value = document.getElementById(myid).defaultValue;
	 obj.style.color='#999';
 }
}

/**
 * 点击搜索按钮执行的函数
 */
function search(){
	document.getElementById("searchform").submit();
}
</script>
<div id="divmenu">
		<a href="${pageContext.request.contextPath}/showProductByPage?category=鞋">鞋</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=衣服">衣服</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=裤子">裤子</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=袜子">袜子</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=眼镜">眼镜</a>
		<a href="${pageContext.request.contextPath}/showProductByPage?category=帽子">帽子</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=手表">手表</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=项链">项链</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=礼物">礼物</a>
		<a href="${pageContext.request.contextPath}/showProductByPage?category=家电">家电</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=手机">手机</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=平板电脑">平板电脑</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=笔记本">笔记本</a>
		<a href="${pageContext.request.contextPath}/showProductByPage?category=台式">台式</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage" style="color:#b4d76d">全部商品目录</a>		
</div>
<div id="divsearch">
<form action="${pageContext.request.contextPath }/MenuSearchServlet" id="searchform">
	<table width="100%" border="0" cellspacing="0">
		<tr>
			<td style="text-align:right; padding-right:220px">
				Search 
				<input type="text" name="textfield" class="inputtable" id="textfield" value="请输入商品名称"
				onmouseover="this.focus();"
				onclick="my_click(this, 'textfield');"
				onBlur="my_blur(this, 'textfield');"/> 
				<a href="#">
					<img src="${pageContext.request.contextPath}/client/images/serchbutton.gif" border="0" style="margin-bottom:-4px" onclick="search()"/> 
				</a>
			</td>
		</tr>
	</table>
</form>
</div>
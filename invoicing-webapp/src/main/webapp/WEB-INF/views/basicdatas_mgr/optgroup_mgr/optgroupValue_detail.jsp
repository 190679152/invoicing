<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!-- 引入国际化标签 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<form method="post" style="padding:15px">
	<table class="detailtable">
		<tr>
			<td>下拉代码：</td>
			<td class="forminputtable"><!-- 当表格行存在两个要显示的td,使用该forminputtable样式可以进行适当的空间调整  -->
				<input type="hidden" name="areaId" value="${optgroupValueData.optgroupId}" />
				<input class="spinner" style="width:168px"  value="${optgroupValueData.optgroupValueCode}" readonly="readonly"/>
			</td>
			<td>下拉名称：</td>
			<td colspan="3"><input class="spinner" style="width:168px"  value="${optgroupValueData.optgroupValueName}" readonly="readonly"/></td>
		</tr>
		<tr>
			<td>下拉状态：</td>
			<td><input id="optgroup_mgr_optgroupValue_detail_status" class="spinner" style="width:168px" readonly="readonly"/></td>
			<td>下拉排序：</td>
			<td><input class="spinner" style="width:168px" value="${optgroupValueData.optgroupValueNum}" readonly="readonly"/></td>
		</tr>
		<tr>
			<td>创建人：</td>
			<td><input class="spinner" style="width:168px" value="${optgroupValueData.createrDisplay}" readonly="readonly"/></td>
			<td>创建时间：</td>
			<td><input class="spinner" style="width:168px" value="<fmt:formatDate value="${optgroupValueData.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/>" readonly="readonly"/></td>
		</tr>
		<tr>
			<td>更新人：</td>
			<td><input class="spinner" style="width:168px" value="${optgroupValueData.updaterDisplay}" readonly="readonly"/></td>
			<td>更新时间：</td>
			<td><input class="spinner" style="width:168px" value="<fmt:formatDate value="${optgroupValueData.updateTime}" pattern="yyyy-MM-dd HH:mm:ss"/>" readonly="readonly"/></td>
		</tr>
		<tr>
			<td>备注：</td>
			<td colspan="3"><textarea class="spinner" style="width:416px" readonly="readonly">${optgroupValueData.remark}</textarea></td>
		</tr>
	</table>
</form>

<script type="text/javascript">
	$('#optgroup_mgr_optgroupValue_detail_status').val(renderGridValue('${optgroupValueData.status}',fields.status));
</script>
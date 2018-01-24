<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!-- 表格序号 -->
<script type="text/html" id="indexTpl">
    {{d.LAY_TABLE_INDEX+1}}
</script>
<!-- 采购(卡片)类型 -->
<script type="text/html" id="titleTpl">
  {{#  if( d.type === 0){ }}
   				 卡片
  {{#  }else if( d.type === 1){ }}
   				 设备
  {{#  } else if(d.type === 2){ }}
            	一体机
  {{#  } }}
</script>
<!-- 运营商 -->
<script type="text/html" id="titleTpl6">
  {{#  if( d.operator == 0){ }}
   				移动
  {{#  }else if( d.operator == 1){ }}
   				电信
  {{#  }else if( d.operator == 2){ }}
   				联通
  {{#  } }}
</script>

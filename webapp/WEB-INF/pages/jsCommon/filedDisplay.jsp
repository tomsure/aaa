<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ include file="baseFiled.jsp" %>
<!-- 返佣类型 -->
<script type="text/html" id="titleTpl2">
  {{#  if( d.rebateType == 0){ }}
   				 折扣
  {{#  }else if( d.rebateType == 1){ }}
   				 定额
  {{#  }else if( d.rebateType == 2){ }}
   				定额发票
  {{#  } }}
</script>
<!-- 返佣详情 -->
<script type="text/html" id="titleTpl3">
  {{#  if( d.rebateType == 0){ }}
   			{{d.rebateNum*10}}折
  {{#  }else if( d.rebateType == 1){ }}
   			{{d.rebateNum}}元
  {{#  }else if( d.rebateType == 2){ }}
   			{{d.rebateNum}}元
  {{#  } }}
</script>
<!-- 支付方式 -->
<script type="text/html" id="titleTpl4">
  {{#  if( d.payType === 0){ }}
   			余额
  {{#  }else if( d.payType === 1){ }}
   			信用
  {{#  } }}
</script>
<!-- 发货状态,0发货待确认,1待出库,2已出库,3取消,4删除-->
<script type="text/html" id="titleTpl5">
  {{#  if( d.outStatus === 0){ }}
   				待发货
  {{#  }else if( d.outStatus === 1){ }}
   				待出库
  {{#  }else if( d.outStatus === 2){ }}
   				已出库
  {{#  }else if( d.outStatus === 3){ }}
   				取消
  {{#  } }}
</script>
<!-- 套餐类型 -->
<script type="text/html" id="titleTpl7">
  {{#  if( d.combo === 0){ }}
   				8G
  {{#  }if( d.combo === 1){ }}
   				16G
  {{#  } }}
</script>

<!-- 确认状态,0取消,1待确认(审核),2已确认(审核)，3驳回,4删除-->
<script type="text/html" id="titleTpl9">
  {{#  if(d.confirmStatus === 0){ }}
				申请取消
  {{#  } else if(d.confirmStatus === 1){ }}
   				 待确认
  {{#  } else if(d.confirmStatus === 2){ }}
            	已确认
  {{#  } else if(d.confirmStatus === 3){ }}
				驳回
  {{#  } else if(d.confirmStatus === 4){ }}
    			删除
  {{#  } }}
</script>
<!--确认状态,0取消,1待确认(审核),2已确认(审核)，3驳回,4删除-->
<script type="text/html" id="titleTpl10">
  {{#  if( d.confirmStatus === 0){ }}
   			取消
  {{#  }else if( d.confirmStatus === 1){ }}
   			待确认
  {{#  }else if( d.confirmStatus === 2){ }}
   			已确认
  {{#  }else if( d.confirmStatus === 3){ }}
   			驳回
  {{#  } }}
</script>
<!--申请人,0取消,1待确认(审核),2已确认(审核)，3驳回,4删除-->
<script type="text/html" id="titleTpl11">
  {{#  if( d.confirmStatus === 0){ }}
   			{{d.applicant}}
  {{#  }else { }}
   			{{d.applicant}}
  {{#  } }}
</script>
<!--审核人(审核人是财务 ),0取消,1待确认(审核),2已确认(审核)，3驳回,4删除-->
<script type="text/html" id="titleTpl12">
  {{#  if( d.confirmStatus === 0){ }}
   			
  {{#  }else if( d.confirmStatus === 1){ }}
   			待确认
  {{#  }else if( d.confirmStatus === 2){ }}
   			{{d.auditor}}
  {{#  }else if( d.confirmStatus === 3){ }}
   			驳回
  {{#  } }}
</script>
<!-- 出库人(出库人就是发货人),0发货待确认,1待出库,2已出库,3取消,4删除-->
<script type="text/html" id="titleTpl13">
  {{#  if( d.outStatus === 0){ }}
   			待出库
  {{#  }else if( d.outStatus === 1){ }}
   			待出库
  {{#  }else if( d.outStatus === 2){ }}
   			{{d.outStorePerson}}
  {{#  }else if( d.outStatus === 3){ }}
   				
  {{#  } }}
</script>
<!-- 确认人(操作员是 确认人就是划卡人)-->
<script type="text/html" id="titleTpl14">
  {{#  if( d.confirmationPerson){ }}
   			{{d.confirmationPerson}}
  {{#  }else{ }}
   			未确认
  {{#  } }}
</script>
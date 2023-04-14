<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="//code.jauery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">
$(function(){
	$("#button1").click(function(){//전송보튼을 누르면  입력받은 자료를 전송
	    var scode=$("#scode").val();
	    var sname=$("#sname").val();
	    var ssu=$("#ssu").val();
	    var sdan=$("#sdan").val();
	    var sam={"scode":scode,"sname":sname,"ssu":ssu,"sdan":sdan};
	    var sam =JSON.stringify(sam); 
	    $.ajax({
	    	type:"post",
	    	async:true,
	    	url:"send4",//목적지
	    	data:{json4:sam},//json4 자료전달객체이름	  
	    	success:function(){
	    		alert("전송성공!!");
	    	},
	    	error:function(){
	    		alert("전송 실패!!");
	    	}	    	
	    });		
	});
	///
	$("#reset1").click(function(){
		$("#scode").val('');
		$("#sname").val('');
		$("#ssu").val('');
		$("#sdan").val('');
		});
	//
	$("#button2").click(function(){
		$.ajax({
		type:"post",
		dataType:"json",
		url:"out4",
		success:function(data){			
			var  htm="<table border='1'  align='center' width='500'>";
			htm+="<tr>";
			htm+="<th>아이디</th>";
			htm+="<th>상품명</th>";
			htm+="<th>수량</th>";
			htm+="<th>단가</th>";
			htm+="<th>금액</th>";
			htm+="</tr>";
			for(var i in data){
				htm+="<tr align='center>'>";
				htm+="<td width=20%>"+data[i].scode+"</td>";
				htm+="<td width=20%>"+data[i].sname+"</td>";
				htm+="<td width=20%>"+data[i].ssu+"</td>";
				htm+="<td width=20%>"+data[i].sdan+"</td>";
				htm+="<td width=20%>"+data[i].skum+"</td>";
				htm+="</tr>";				
			}
			htm+="</table>";
			$("#out").html(htm);			
		 }
		});
	});
	
	
	$("#codecheck").click(function(){
	  var scode=$("#scode").val();	
		$.ajax({
			type:"post",
			async:true,
			dataType:"text",
			url:"codecheck",
			data:{"scode":scode},
			success:function(bigo){
				if(bigo=="yes"){
					alert("사용가능한 코드!!");
					}
				else{	 				
					alert("사용중인 코드!!");
				}				
			}
		});		
	});	
	
});


</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="">
<table border="1" align="center">

<tr>
	<th>상품코드</th>
	<td>
	  <input type="text" name="scode" id="scode">
	  <button type="button" id="codecheck">코드중복검사 </button>	  
	</td>
</tr>

<tr>
	<th>상품명</th>
	<td>
	  <input type="text" name="sname" id="sname">	  
	</td>
</tr>

<tr>
	<th>상품수량</th>
	<td>
	  <input type="text" name="ssu" id="ssu">	  
	</td>
</tr>

<tr>
	<th>상품단가</th>
	<td>
	  <input type="text" name="sdan" id="sdan">	  
	</td>
</tr>
<tr>	
	<td colspan="2">
	  <button type="button"  id="button1">전송</button>
	   <button type="button"  id="reset1">취소</button>
	   <button type="button"  id="button2">불러오기</button>
	</td>
</tr>
</table>
</form>
<div id="out"></div>
</body>
</html>
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
	    
	    var name=$("#name").val();
	    var sb=$('input[name=sb]:checked').val();
	   document.write("이름 : "+name);
	   document.write("성별 : "+sb);
	 /*   
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
	 */
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
	<th>이름</th>
	<td>
	  <input type="text" name="name" id="name">
	 </td>
</tr>

<tr>
	<th>성별</th>
	<td>
	  <input type="radio" name="sb" id="sb" value="남자">남
	  <input type="radio" name="sb" id="sb" value="여자">여
	</td>
</tr>

<tr>
	<th>나이구분</th>
	<td>
	  <select name="age" id="age">
	  <option value="1~9">어린이</option>
	  <option value="10~19">10대</option>	
	  <option value="20~29">20대</option>	
	  <option value="39~39">30대</option>	
	  <option value="40~49">40대</option>	
	  <option value="50이상">50이상</option>
	</td>
</tr>

<tr>	
	<td colspan="2">
	  <button type="button"  id="button1">전송</button>
	  
	</td>
</tr>
</table>
</form>

</body>
</html>
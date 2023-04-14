<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>    
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<header>
<h2 style="text-align: center;">스프링예제프로그램</h2>
</header>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
    <a class="navbar-brand" href="#">Company</a>
    </div>
    <ul class="nav navbar-nav">
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">상품 <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="companyinput">상품정보입력</a></li>
          <li class="divider"></li>      
        <li><a href="aaa">radio입력</a></li>
        <li class="divider"></li>  
        </ul>
      </li>     
    </ul>
       
    <ul class="nav navbar-nav navbar-right">    	
		      <li><a href="member"><span class="glyphicon glyphicon-user"></span> 회원가입</a></li>
		      <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> 로그인</a></li>
    
    </ul>
  </div>
</nav>
</html>
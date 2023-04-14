package com.ezen.koh13;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {//기본적인 메인 컨트롤러로서 역활은 메인화면만  띄워
	//메인화면 띄어진다는것은 미리   top..footer..layout
	@RequestMapping(value = "/")
	public String kk1() {
		return "main";
	}
	

	@RequestMapping(value = "/aaa")
	public String kk6() {
		
		return "radioinput";
	}//체크 종료
}

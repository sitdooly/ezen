package com.ezen.koh13;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {//�⺻���� ���� ��Ʈ�ѷ��μ� ��Ȱ�� ����ȭ�鸸  ���
	//����ȭ�� ������ٴ°��� �̸�   top..footer..layout
	@RequestMapping(value = "/")
	public String kk1() {
		return "main";
	}
	

	@RequestMapping(value = "/aaa")
	public String kk6() {
		
		return "radioinput";
	}//üũ ����
}

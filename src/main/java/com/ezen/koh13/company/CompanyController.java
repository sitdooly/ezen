package com.ezen.koh13.company;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CompanyController {
	@Autowired
	SqlSession sqlSession;
	@RequestMapping(value = "/companyinput")
	public String kk1() {
		return "companyinput";//
	}
	
	@ResponseBody //�̸޼ҵ�� �񵿱�� �Լ�..
	@RequestMapping(value = "/send4")
	public String kk2(HttpServletRequest request) {
		String json4 = request.getParameter("json4");
		JSONParser jp = new JSONParser();//��ȯŸ�԰�ü 
		JSONObject jobj; //Ű,������ ����
		try {
		jobj=(JSONObject) jp.parse(json4);//json4�� ��üŸ���� Ű,�� ��������
		String scode =(String)jobj.get("scode");//Ű���� �ҷ����� ����  �ҷ�����
		String sname =(String)jobj.get("sname");
		int ssu =Integer.parseInt(String.valueOf(jobj.get("ssu")));
		int sdan =Integer.parseInt(String.valueOf(jobj.get("sdan")));
		int skum=ssu*sdan;
		Service3 ss3 = sqlSession.getMapper(Service3.class);
		ss3.companyinsert(scode, sname, ssu, sdan, skum);
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return "redirect:companyinput";//
	}//������ ����

	@ResponseBody //����� �ڷḦ ������
	@RequestMapping(value = "/out4",method = RequestMethod.POST,produces = "application/text;charset=UTF-8")
	public String kk4() {
		Service3 ss3 = sqlSession.getMapper(Service3.class);
	ArrayList<CompanyDTO>list	=ss3.compantout();
		
		JSONArray array = new JSONArray();
		for(int  i=0;i<list.size();i++) {
		JSONObject member=new JSONObject();
		String scode =list.get(i).getScode();
		String sname =list.get(i).getSname();
		int ssu =list.get(i).getSsu();
		int sdan =list.get(i).getSdan();
		int skum =list.get(i).getSkum();
		member.put("scode",scode);
		member.put("sname",sname);
		member.put("ssu",ssu);
		member.put("sdan",sdan);
		member.put("skum",skum);
		array.add(member);
		
		}
		String jjson = array.toJSONString();		
		return jjson;//
	}//������ ����

	//�ڵ� üũ
	@ResponseBody //����� �ڷḦ ������
	@RequestMapping(value = "/codecheck")
	public String kk5(String scode) {
		Service3 ss3 = sqlSession.getMapper(Service3.class);
	   int cnt  =ss3.scodesesrch(scode);
	   System.out.println("�ڵ� : "+scode+" "+cnt);
	   String bigo=null;
	   if(cnt==0) {
		   bigo="yes";
	   }
	   else
	   {
		   bigo="no";
	   }	
		return bigo;//
	}//üũ ����
//radio ��ư  


}

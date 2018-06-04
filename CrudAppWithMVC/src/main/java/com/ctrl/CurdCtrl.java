package com.ctrl;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.AddRecord;
import com.service.RegisterService;

@Controller
public class CurdCtrl {

	@Autowired
	RegisterService registerService;
	
	
	 @RequestMapping("/")
	 public String startTest()
	 {
		 return "home";
	 }
	 @RequestMapping("/valid")
	 public String validate(HttpServletRequest request)
	 {
		 String uname=request.getParameter("user");
		 String upass=request.getParameter("pass");
		 if(uname.equals("admin")&&upass.equals("admin"))
		 {
			 return "master";
		 }
		 else
		 {
			return "home"; 
		 }
		
	 }
	 
	 @RequestMapping("/addrecord")
	 public String addRecord()
	 {
		 return "addrecord";
	 }
	 @RequestMapping("/save")
	 public String saveRecord(AddRecord addrecord,Map<String,String> map)
	 {
		 boolean b=registerService.isAddRecord(addrecord);
		 if(b)
		 {
			 map.put("msg","Record Save Success");
		 }
		 else
		 {
			 map.put("msg","Some problem is there");
		 }
		 return "message";
	 }
	 @RequestMapping("/view")
	 public String viewAll(Map <String,List> map)
	 {  List data=registerService.getAllRecord();
	     map.put("viewdata",data);
		 return "viewrecord";
	 }
	 
	 @RequestMapping("/del")
	 public String deleteRecord(HttpServletRequest request)
	 {
		 String email=request.getParameter("e");
		 registerService.isDelete(email);
	    return "delete";	 
	 }
}







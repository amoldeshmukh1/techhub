package techhub.admin.enquiry.ctrl;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import techhub.admin.enquiry.enqmodel.EnquiryModel;
import techhub.admin.enquiry.enqser.EnquiryService;


//import techhub.admin.enquiry.Service.EnquiryService;
//import techhub.admin.enquiry.model.Enquiry;

@Controller
public class EnquiryCtrl {

	@Autowired
	EnquiryService enqService;
	
	 @RequestMapping("/")
	 public String start()
	 {
		return "adminmaster";
	 }
	 @RequestMapping("/enquiry")
	 public String newEnquiry()
	 {
		 return "enquiry";
	 }
	 @RequestMapping("/save")
	 public String saveRecord(EnquiryModel enquiry,Map<String,String> map)
	 {
		 boolean b=enqService.isAdd(enquiry);
		 if(b)
		 {
			 map.put("msg","Record Save Success");
			 return "message";
		 }
		 else
		 {
			 map.put("msg","Some problem is there");
		 }
		 return "message";
	 }
	 @RequestMapping("/viewenq")
	 public String viewEnquiry(Map map)
	 {
		 java.util.List listEnq=enqService.getAllRecords();
		 map.put("enqData", listEnq);
		 return "viewenquiry";
		 
	 }
	
}









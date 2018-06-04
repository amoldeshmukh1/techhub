package techhub.admin.enquiryctrl;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EnquiryCtrl {

	 
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
}

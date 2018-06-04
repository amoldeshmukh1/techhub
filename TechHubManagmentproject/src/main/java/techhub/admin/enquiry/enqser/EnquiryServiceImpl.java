package techhub.admin.enquiry.enqser;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import techhub.admin.enquiry.dao.EnquiryDao;
import techhub.admin.enquiry.enqmodel.EnquiryModel;

@Service("enqService")
public class EnquiryServiceImpl implements EnquiryService{
	
	@Autowired
	EnquiryDao enqDao;
	
   public boolean isAdd(EnquiryModel enquiry)
   {
	   return enqDao.isAdd(enquiry);
	   
   }

@Override
public List<EnquiryModel> getAllRecords() {
	return enqDao.getAllRecords();
}


}

	


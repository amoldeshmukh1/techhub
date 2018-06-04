package techhub.admin.enquiry.enqser;

import java.util.List;

import techhub.admin.enquiry.enqmodel.EnquiryModel;

public interface EnquiryService {

	public boolean isAdd(EnquiryModel enquiry);
	public List<EnquiryModel> getAllRecords();

	
}

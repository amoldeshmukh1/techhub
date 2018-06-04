package techhub.admin.enquiry.dao;

import java.util.List;

import techhub.admin.enquiry.enqmodel.EnquiryModel;

public interface EnquiryDao {


	public boolean isAdd(EnquiryModel enquiry);
	public List<EnquiryModel> getAllRecords();
}

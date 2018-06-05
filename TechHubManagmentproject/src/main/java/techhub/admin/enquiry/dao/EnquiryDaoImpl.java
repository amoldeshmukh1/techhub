package techhub.admin.enquiry.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import techhub.admin.enquiry.enqmodel.EnquiryModel;

@Repository("enqDao")
public class EnquiryDaoImpl  implements EnquiryDao {

	@Autowired
	JdbcTemplate template;
	
	@Override
	public boolean isAdd(EnquiryModel enquiry) {
		// TODO Auto-generated method stub
		int value=template.update("insert into enquiry values('0',?,?,?,?,?,?,?,?,?,?,?)",new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement pstmt) throws SQLException {
				// TODO Auto-generated method stub
				pstmt.setString(1, enquiry.getName());
				pstmt.setString(2, enquiry.getEmail());
				pstmt.setString(3, enquiry.getContact());
				pstmt.setString(4, enquiry.getCource());
				pstmt.setString(5, enquiry.getCollege());
				pstmt.setString(6, enquiry.getUniversity());
				
				pstmt.setString(7, enquiry.getAddress());
				
				pstmt.setString(8, enquiry.getReference());
				
				
				pstmt.setString(9, enquiry.getStatus());
				pstmt.setString(10, enquiry.getCandidatetype());
				pstmt.setString(11, enquiry.getBatchtype());
				
				
				
				
				
			}
			
		});
		if(value>0)
		{
			return true;
		}
		else
		{
		return false;
		}
	}

	@Override
	public List<EnquiryModel> getAllRecords() {
	  List <EnquiryModel> list=template.query("select *from enquiry",new RowMapper() {

		@Override
		public EnquiryModel mapRow(ResultSet rs, int arg1) throws SQLException {
		 EnquiryModel enq=new EnquiryModel();
		 enq.setName(rs.getString("Name"));
		 enq.setEmail(rs.getString("Email"));
		 enq.setContact(rs.getString("Contact"));
		enq.setCource(rs.getString("Cource"));
		enq.setCollege(rs.getString("college"));
		 
		 
			return enq;
		}
		  
	  });
	return list;
	}

}

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
public class EnquiryDaoImpl implements EnquiryDao {

	@Autowired
	JdbcTemplate template;

	@Override
	public boolean isAdd(EnquiryModel enquiry) {
		// TODO Auto-generated method stub
		int value = template.update("insert into enquiry values('0',?,?,?,?,?,?,?,?,?,?)",
				new PreparedStatementSetter() {

					@Override
					public void setValues(PreparedStatement pstmt) throws SQLException {
						pstmt.setString(1, enquiry.getName());
						pstmt.setString(2, enquiry.getEmail());
						pstmt.setString(3, enquiry.getContact());
						pstmt.setString(4, enquiry.getCollege());
						pstmt.setString(5, enquiry.getUniversity());
						pstmt.setString(6, enquiry.getAddress());
						pstmt.setString(7, enquiry.getReference());
						pstmt.setBoolean(8, enquiry.isStatus());
						pstmt.setString(9, enquiry.getCandidateType());
						pstmt.setString(10, enquiry.getBatchType());
						//pstmt.setInt(11, enquiry.getCourseId());
					}

				});
		if (value > 0) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	public List<EnquiryModel> getAllRecords() {
		List<EnquiryModel> list = template.query("select *from enquiry", new RowMapper() {

			@Override
			public EnquiryModel mapRow(ResultSet rs, int arg1) throws SQLException {
				EnquiryModel enq = new EnquiryModel();
				enq.setName(rs.getString("name"));
				enq.setEmail(rs.getString("email"));
				enq.setContact(rs.getString("contact"));
				//enq.setCourseId(rs.getInt("courseId"));

				return enq;
			}

		});
		return list;
	}

}

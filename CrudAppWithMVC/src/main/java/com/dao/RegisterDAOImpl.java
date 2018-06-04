package com.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.model.AddRecord;

@Repository("registerDao")
public class RegisterDAOImpl implements RegisterDAO {

	@Autowired
	JdbcTemplate jdbcTemplate;
	public boolean isAddRecord(AddRecord addrecord) {
	
		int value=jdbcTemplate.update("insert into regmvc values(?,?,?)",new Object[]{addrecord.getName(),addrecord.getEmail(),addrecord.getContact()});
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
	public List<AddRecord> getAllRecord() {
		
		List list=jdbcTemplate.query("select *from regmvc", new RowMapper() {

			@Override
			public AddRecord mapRow(ResultSet rs, int rowNum) throws SQLException {
				AddRecord ar=new AddRecord();
				ar.setName(rs.getString(1));
				ar.setEmail(rs.getString(2));
				ar.setContact(rs.getString(3));
				return ar;
			}
		});
		return list;
	}
	@Override
	public boolean isDelete(String email)
	{
		int value=jdbcTemplate.update("delete from regmvc where email=?",new Object[]{email});
	    if(value>0)
	    {
	    	return true;
	    }
	    else
	    {
	    	return false;
	    }
	}
}

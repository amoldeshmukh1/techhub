package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.RegisterDAO;
import com.model.AddRecord;

@Service("registerService")
public class RegisterServiceImpl implements RegisterService {
	@Autowired
	RegisterDAO registerDao;

	public boolean isAddRecord(AddRecord addrecord) {
		return registerDao.isAddRecord(addrecord);

	}

	@Override
	public List<AddRecord> getAllRecord() {
		return registerDao.getAllRecord();
		/*
		 * List list=registerDao.getAllRecord();
		 * return list;
		 */

	}
	@Override
	public boolean isDelete(String email)
	{
		return registerDao.isDelete(email);
	}
}

package com.dao;

import java.util.List;

import com.model.AddRecord;

public interface RegisterDAO {
	public boolean isAddRecord(AddRecord addrecord);
	public List<AddRecord> getAllRecord();
	public boolean isDelete(String email);
}

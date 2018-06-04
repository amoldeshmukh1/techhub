package com.service;

import java.util.List;

import com.model.AddRecord;

public interface RegisterService {

	public boolean isAddRecord(AddRecord addrecord);
	public List<AddRecord> getAllRecord();
	public boolean isDelete(String email);
	
}

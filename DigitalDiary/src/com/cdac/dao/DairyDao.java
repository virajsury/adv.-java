package com.cdac.dao;

import java.util.List;

import com.cdac.dto.Dairy;

public interface DairyDao {
	//methods
	void insertDairy(Dairy dairy);
	void deleteDairy(int dairyId);
	Dairy selectDairy(int dairyId);
	void updateDairy(Dairy dairy);
	List<Dairy> selectAll(int userId);
	List<Dairy> searchAll(String contentDate);
}

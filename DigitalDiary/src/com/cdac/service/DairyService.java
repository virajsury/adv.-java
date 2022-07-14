package com.cdac.service;
//spring bean methods
import java.util.List;

import com.cdac.dto.Dairy;

public interface DairyService {

	void addDairy(Dairy dairy);
	void removeDairy(int dairyId);
	Dairy findDairy(int dairyId);
	void modifyDairy(Dairy dairy);
	List<Dairy> selectAll(int userId);
	List<Dairy> searchAll(String contentDate);
	 
}

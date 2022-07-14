
package com.cdac.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdac.dao.DairyDao;
import com.cdac.dto.Dairy;

@Service
public class DairyServiceImple implements DairyService {

	@Autowired
	private DairyDao dairyDao;
	
	@Override
	public void addDairy(Dairy dairy) {
		dairyDao.insertDairy(dairy);
			
	}

	@Override
	public void removeDairy(int dairyId) {
		dairyDao.deleteDairy(dairyId);
	}

	@Override
	public Dairy findDairy(int dairyId) {
		return dairyDao.selectDairy(dairyId);
		
	}

	@Override
	public void modifyDairy(Dairy dairy) {
		dairyDao.updateDairy(dairy);
	}

	@Override
	public List<Dairy> selectAll(int userId) {
		return dairyDao.selectAll(userId);
		 
	}
	@Override
	public List<Dairy> searchAll(String contentDate) {
		return dairyDao.searchAll(contentDate);
		 
	}
	
	

	
}

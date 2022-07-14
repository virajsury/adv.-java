package com.cdac.cntr;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cdac.dto.Dairy;
import com.cdac.service.DairyService;
import com.cdac.dto.User;

@Controller
public class DairyController {

	@Autowired
	private DairyService dairyService;
	
	@RequestMapping(value="/prep_dairy_add_form.htm",method=RequestMethod.GET)
	public String prepDairyAddForm(ModelMap map) {
		map.put("dairy", new Dairy());
		return "dairy_add_form";
	}

	@RequestMapping(value="/dairy_add.htm",method=RequestMethod.POST)
	public String dairyAdd(Dairy dairy,HttpSession session) {
		int userId = ((User)session.getAttribute("user")).getUserId();
		dairy.setUserId(userId); 
		dairyService.addDairy(dairy);
		return "home";
	}
	
	@RequestMapping(value = "/dairy_list.htm",method = RequestMethod.GET)
	public String allDairy(ModelMap map,HttpSession session) {
		int userId = ((User)session.getAttribute("user")).getUserId();
		List<Dairy> li = dairyService.selectAll(userId);
		map.put("dairyList", li);
		return "dairy_list";
	}
	
	@RequestMapping(value = "/dairy_delete.htm",method = RequestMethod.GET)
	public String dairyDelete(@RequestParam int dairyId,ModelMap map,HttpSession session) {
		
		dairyService.removeDairy(dairyId); 
		
		int userId = ((User)session.getAttribute("user")).getUserId();
		List<Dairy> li = dairyService.selectAll(userId);
		map.put("dairyList", li);
		return "dairy_list";
	}
	
	@RequestMapping(value = "/dairy_update_form.htm",method = RequestMethod.GET)
	public String dairyUpdateForm(@RequestParam int dairyId,ModelMap map) {
		
		Dairy dai = dairyService.findDairy(dairyId);
		map.put("dairy", dai);
		
		return "dairy_update_form";
	}
	
	@RequestMapping(value = "/dairy_update.htm",method = RequestMethod.POST)
	public String dairyUpdate(Dairy dairy,ModelMap map,HttpSession session,HttpServletResponse response) throws IOException {
		
		int userId = ((User)session.getAttribute("user")).getUserId();
		dairy.setUserId(userId);
		dairyService.modifyDairy(dairy);
			
		List<Dairy> li = dairyService.selectAll(userId);
		map.put("daiList", li);
		response.sendRedirect("dairy_list.htm");
		
		return null;
	}
	
	@RequestMapping(value="/prep_dairy_search_form.htm",method=RequestMethod.GET)
	public String prepDairySearchForm(ModelMap map) {
		map.put("dairy", new Dairy());
		return "dairy_search";
	}
	
	@RequestMapping(value = "/dairy_search.htm",method = RequestMethod.GET)
	public String allDate(ModelMap map,HttpSession session) {
		String contentDate = ((Dairy)session.getAttribute("dairy")).getContentDate();
		List<Dairy> li = dairyService.searchAll(contentDate);
		map.put("searchList", li);
		return "search_list";
	}
	
}



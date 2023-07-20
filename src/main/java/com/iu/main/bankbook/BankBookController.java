package com.iu.main.bankbook;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/bankbook/*")
public class BankBookController {
	
	@Autowired
	private BankBookService bankBookService;
	
	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String getList() throws Exception {

		
		System.out.println("list");
		bankBookService.service();
		return "bankbook/list";

	}
	
	@RequestMapping(value = "detail",method = RequestMethod.GET)
	public String getDetail()throws Exception{
		System.out.println("detail");
		
		
		return "bankbook/detail";
	}
	
	@RequestMapping(value = "add",method = RequestMethod.GET)
	public String getAdd()throws Exception{
		System.out.println("add");
		
		
		return "bankbook/add";
	}
	
	
	@RequestMapping(value = "add",method = RequestMethod.POST)
	public String setAdd2() throws Exception {
		
		
		return "redirect:./list";
	}
	
	@RequestMapping(value = "update",method = RequestMethod.GET)
	public String getUpdate()throws Exception{
		System.out.println("update");
		
		
		return "bankbook/update";
	}
	
	//delete
	@RequestMapping(value = "delete",method = RequestMethod.GET)
	public String getDelete()throws Exception{
		System.out.println("delete");
		
		
		return "bankbook/delete";
	}

}

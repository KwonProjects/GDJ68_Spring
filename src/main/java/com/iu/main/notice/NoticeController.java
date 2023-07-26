package com.iu.main.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.iu.main.util.Pager;

@Controller
@RequestMapping("/notice/**")
public class NoticeController {

	@Autowired
	private NoticeService noticeService;

	@RequestMapping(value = "list", method = RequestMethod.GET)
	public ModelAndView goNotice(Pager pager,ModelAndView mv) throws Exception {
		List<NoticeDTO> ar = noticeService.getList(pager);
		mv.addObject("list", ar);
		mv.addObject("pager", pager);
		mv.setViewName("board/list");
		return mv;
	}

	@RequestMapping(value = "add")
	public String setAdd() throws Exception {

		return "board/add";
	}

	@RequestMapping(value = "add", method = RequestMethod.POST)
	public String setAdd(NoticeDTO noticeDTO) throws Exception {
		int result = noticeService.setAdd(noticeDTO);
		return "redirect:./list";
	}

	@RequestMapping(value="detail", method=RequestMethod.GET)
	public ModelAndView getDetail(NoticeDTO noticeDTO, ModelAndView mv) throws Exception{
		noticeDTO = noticeService.getDetail(noticeDTO);				
		mv.addObject("dto", noticeDTO);
		mv.setViewName("board/detail");
		
		return mv;
	}
	

	@RequestMapping(value = "update", method = RequestMethod.GET)
	public ModelAndView setUpdate(NoticeDTO noticeDTO, ModelAndView mv) throws Exception {
		noticeDTO = noticeService.getDetail(noticeDTO);
		mv.addObject("update", noticeDTO);
		mv.setViewName("board/update");
		return mv;
	}

	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String setUpdate(NoticeDTO noticeDTO) throws Exception {

		int result = noticeService.setUpdate(noticeDTO);
		return "redirect:./detail?no=" + noticeDTO.getNo();
	}
	
	@RequestMapping(value = "delete", method = RequestMethod.GET)
	public String setDelete(NoticeDTO noticeDTO)throws Exception{
		int result = noticeService.setDelete(noticeDTO);
		
		return "redirect:./list";
	}
}

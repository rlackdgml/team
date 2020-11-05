package com.biz.team.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.biz.team.model.BbsVO;
import com.biz.team.service.BbsService;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@Controller
@RequestMapping(value = "/bbs")
public class BbsController {

	@Autowired
	private BbsService bbsService;

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) {

		List<BbsVO> bbsList = bbsService.selectAll();
		model.addAttribute("bor", bbsList);
		return "/bbs/bbs-list";
	}

	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String write() {
		return "/bbs/bbs-write";
	}

	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String write(BbsVO BbsVO) {

		 bbsService.insert(BbsVO);
		return "redirect:/bbs/list";

	}

	@RequestMapping(value = "/detail/{seq}", method = RequestMethod.GET)
	public String detail(@PathVariable("seq") String seq, Model model) {

		long long_seq = Long.valueOf(seq);
		BbsVO BbsVO = bbsService.findBySeq(long_seq);

		model.addAttribute("BbsVO", BbsVO);
		return "/bbs/bbs-detail";
	}

	@RequestMapping(value = "/delete/{seq}", method = RequestMethod.GET)
	public String update(@PathVariable("seq") long seq) {

		 Long long_seq = Long.valueOf(seq);
	      
	      BbsVO bbsVO = bbsService.findBySeq(long_seq);
	      int ret = bbsService.delete(long_seq);
	      if(ret > 0) {
	         log.debug("삭제된 데이터 개수 {}",ret);
	      }
	   
	      return "/bbs/bbs-list";
	   }
	

	@RequestMapping(value = "/update/{seq}", method = RequestMethod.GET)
	public String update(@PathVariable("seq") long seq ,BbsVO bbsVO, Model model) {
		bbsVO = bbsService.findBySeq(seq);
		model.addAttribute("BbsVO",bbsVO);
		
		return "/bbs/bbs-write";
	}

	@RequestMapping(value = "/update/{seq}", method = RequestMethod.POST)
	public String update(@ModelAttribute("BbsVO") BbsVO bbsVO) {
		 int ret = bbsService.update(bbsVO);
	      if (ret > 0) {
	         log.debug("업데이트된 데이터 개수 {}", ret);
	      }
	      return "redirect:/";

	}
	
}

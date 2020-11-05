package com.biz.team.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.biz.team.model.TeamVO;
import com.biz.team.service.TeamService;

import lombok.extern.slf4j.Slf4j;



@Slf4j
@Controller
@RequestMapping(value = "/")
public class TeamController {
	
	@Autowired
	@Qualifier("teamServiceV1")
	private TeamService teService;

	
	@Transactional
	@RequestMapping(value = { "/", "" }, method = RequestMethod.GET)
	public String home(Model model) {

		return "home";

	}
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) {

	
		return "/WEB-INF/views/page/page-list1.jsp";
	}

}

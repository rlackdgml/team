package com.biz.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.biz.team.mapper.TeamDao;
import com.biz.team.model.TeamVO;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
@Slf4j
@RequiredArgsConstructor
@Service("teamServiceV1")
public class TeamServiceV1 implements TeamService{

	@Autowired
	private TeamDao teamDao;
	
	@Override
	public List<TeamVO> selectAll() {
		// TODO Auto-generated method stub
		return teamDao.selectAll();
	}

	@Override
	public TeamVO findById(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(TeamVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(TeamVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(Long id) {
		// TODO Auto-generated method stub
		return 0;
	}

}

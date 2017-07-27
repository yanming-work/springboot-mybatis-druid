package com.demo.springboot.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.springboot.domain.master.City;
import com.demo.springboot.mapper.master.CityMapper;
import com.demo.springboot.service.ICityService;
@Service
public class CityServiceImpl implements ICityService {

	 @Autowired
	 private CityMapper cityMapper; // 主数据源
	@Override
	public List<City> findAllCity() {
		return cityMapper.selectAllCity();
	}

}

package com.demo.springboot.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.springboot.domain.cluster.User;
import com.demo.springboot.mapper.cluster.UserMapper;
import com.demo.springboot.service.IUserService;
@Service
public class UserServiceImpl implements IUserService{
	 @Autowired
	 private UserMapper userMapper; // 主数据源
	@Override
	public List<User> findAllUser() {
		return userMapper.selectAllUser();
	}

}

package com.demo.springboot.service;

import java.util.List;

import com.demo.springboot.domain.cluster.User;

public interface IUserService {

	List<User> findAllUser();
}

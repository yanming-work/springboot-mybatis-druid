package com.demo.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.demo.springboot.domain.master.City;
import com.demo.springboot.service.ICityService;
import com.demo.springboot.util.JsonUtil;

@RestController
@RequestMapping("city")
public class CityRestController {
	 @Autowired
	    private ICityService cityService;
	 
	 /**
	     * 根据用户名获取用户信息，包括从库的地址信息
	     *
	     * @param userName
	     * @return
	     */
	 	@ResponseBody
		@RequestMapping(value={"/all","/all.htm"}, 	method = { RequestMethod.GET, RequestMethod.POST },produces = "text/html;charset=UTF-8")
	    public String findAll() {
	 		String jsonString = "";
	 		List<City> cityList=cityService.findAllCity();
	 		jsonString=JsonUtil.listToJsonStr(cityList);
	 		
	        return jsonString;
	    }
}

package com.zy.admin.business.service;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.zy.admin.business.model.Demo;
import com.zy.admin.business.repository.DemoMapper;
import com.zy.admin.system.utils.StringUtil;
import com.zy.admin.system.utils.results.PageResult;

@Service
public class DemoService {
	
	private final DemoMapper demoMapper;

	public DemoService(DemoMapper demoMapper) {
		this.demoMapper = demoMapper;
	}
	
	  public PageResult<Demo> list(int pageNum, int pageSize,String searchKey, String searchValue,String startDate, String endDate) {
		  Page<Demo> page = new Page<>(pageNum, pageSize);
		  Wrapper<Demo> wrapper =new EntityWrapper<>();
		  if(StringUtil.isNotBlank(searchKey)) {
				wrapper.like(searchKey, searchValue);
			}
		  if(StringUtil.isNotBlank(startDate)) {
			  wrapper.ge("create_date", startDate);
		  }
		  if(StringUtil.isNotBlank(endDate)) {
			  wrapper.le("create_date", endDate);
		  }
		  wrapper.orderBy("create_date", false);
		  List<Demo> demos = demoMapper.selectPage(page, wrapper);
		  return new PageResult<>(page.getTotal(), demos);
	  }
	  
	  public boolean add(Demo demo) {
		  demo.setCreateDate(new Date());
		  boolean rs = demoMapper.insert(demo) > 0;
		  return rs;  
	  }
	  
	  public boolean update(Demo demo) {
		  boolean rs = demoMapper.updateById(demo) > 0;
		  return rs;  
	  }
	  
	  public boolean delete(Demo demo) {
		  boolean rs = demoMapper.deleteById(demo.getId()) > 0;
		  return rs;  
	  }
	
	

	
}

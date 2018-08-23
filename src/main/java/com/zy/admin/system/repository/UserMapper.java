package com.zy.admin.system.repository;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.zy.admin.system.model.User;

@Repository
public interface UserMapper extends BaseMapper<User> {

    User getByUsername(String username);
    
    List<User> selectByRoleId(@Param("roleId") Integer roleId);
}

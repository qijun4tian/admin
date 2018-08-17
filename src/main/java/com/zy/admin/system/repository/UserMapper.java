package com.zy.admin.system.repository;

import org.springframework.stereotype.Repository;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.zy.admin.system.model.User;

@Repository
public interface UserMapper extends BaseMapper<User> {

    User getByUsername(String username);
}

package com.zy.admin.system.exception;

import java.util.HashMap;
import java.util.Map;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.slf4j.Slf4j;

/**
 * 全局异常处理器
 * Created by wangfan on 2018-02-22 上午 11:29
 */
@ControllerAdvice
@Slf4j
public class MyExceptionHandler {
   
    @ResponseBody
    @ExceptionHandler(Exception.class)
    public Map<String, Object> errorHandler(Exception ex) {
        Map<String, Object> map = new HashMap<>();
        // 根据不同错误获取错误信息
        if (ex instanceof IException) {
            map.put("code", ((IException) ex).getCode());
            map.put("msg", ex.getMessage());
        } /*else if (ex instanceof UnauthorizedException) {
            map.put("code", 403);
            map.put("msg", "没有访问权限");
        }*/ else {
            String message = ex.getMessage();
            map.put("code", 500);
            //map.put("msg", "系统繁忙");
            // 开发阶段建议错误信息直接放在msg中，生产版本建议把错误信息放在details中，msg提示系统繁忙即可
            map.put("msg", message == null || message.trim().isEmpty() ? "系统繁忙" : message);
            map.put("details", message);
            log.error(ex.getMessage(), ex);
            ex.printStackTrace();
        }
        return map;
    }

}

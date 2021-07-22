package pers.tzl.nightfall.nightfallserver.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;

/**
 * @ClassName RedisUtil
 * @Description Redis操作工具类
 * @Author tzl
 * @Date 2021/6/22 15:38
 * @Version 1.0
 */
public class RedisUtil {

    @Autowired
    private  RedisTemplate redisTemplate;


}

package pers.tzl.nightfall.nightfallserver.util;

import org.springframework.util.DigestUtils;

/**
 * @ClassName Md5Util
 * @Description TODO
 * @Author tzl
 * @Date 2021/6/15 17:48
 * @Version 1.0
 */
public class Md5Util {

    public static void main(String[] args) {
        String md5Str = DigestUtils.md5DigestAsHex("123456".getBytes());
        System.out.println("md5Str = " + md5Str);
    }
}

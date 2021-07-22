package pers.tzl.nightfall.nightfallserver.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;
import pers.tzl.nightfall.nightfallserver.common.NightfallException;
import pers.tzl.nightfall.nightfallserver.entity.LoginUserTab;
import pers.tzl.nightfall.nightfallserver.entity.UserInfoTab;
import pers.tzl.nightfall.nightfallserver.mapper.LoginUserTabMapper;
import pers.tzl.nightfall.nightfallserver.mapper.UserInfoTabMapper;
import pers.tzl.nightfall.nightfallserver.service.LoginUserTabService;
import pers.tzl.nightfall.nightfallserver.util.VerifyUtil;

import java.awt.image.BufferedImage;
import java.util.Map;
import java.util.UUID;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author tzl
 * @since 2021-06-21
 */
@Service
public class LoginUserTabServiceImpl extends ServiceImpl<LoginUserTabMapper, LoginUserTab> implements LoginUserTabService {

    @Autowired
    private LoginUserTabMapper loginUserTabMapper;

    @Autowired
    private UserInfoTabMapper userInfoTabMapper;

    /**
     * @Author tzl
     * @Description 生成验证码
     * @Date  2021/6/28 9:59
     * @Param []
     * @return java.util.Map<java.lang.String,java.lang.Object>
     */
    @Override
    public Map<String, Object> generateVerifyCode() {
        Map<String, Object> map = VerifyUtil.generateVerify();
        String uuid = UUID.randomUUID().toString();
        BufferedImage verifyPic = (BufferedImage) map.get("verifyPic");

        return map;

    }

    /**
     * @Author tzl
     * @Description 账号密码登录
     * @Date  2021/6/22 14:46
     * @Param [loginUserTab, code]
     * @return pers.tzl.nightfall.nightfallserver.entity.UserInfoTab
     */
    @Override
    public UserInfoTab login(LoginUserTab loginUserTab, String code) {
        Map<String, Object> map = VerifyUtil.generateVerify();
        String verifyCode = (String) map.get("verifyCode");
        if (!verifyCode.equals(code)) {
            throw new NightfallException("验证码验证失败");
        }
        String password = loginUserTab.getPassword();
        String md5Password = DigestUtils.md5DigestAsHex(password.getBytes());
        loginUserTab.setPassword(md5Password);
        LoginUserTab userTab = loginUserTabMapper.selectOne(new QueryWrapper<>(loginUserTab));
        if (userTab == null) {
            throw new NightfallException("用户不存在或密码错误");
        }
        Integer id = userTab.getId();
        UserInfoTab userInfoTab = userInfoTabMapper.selectById(id);
        return userInfoTab;
    }
}

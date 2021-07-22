package pers.tzl.nightfall.nightfallserver.service;

import com.baomidou.mybatisplus.extension.service.IService;
import pers.tzl.nightfall.nightfallserver.entity.LoginUserTab;
import pers.tzl.nightfall.nightfallserver.entity.UserInfoTab;

import java.util.Map;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author tzl
 * @since 2021-06-21
 */
public interface LoginUserTabService extends IService<LoginUserTab> {

    Map<String,Object> generateVerifyCode();

    UserInfoTab login(LoginUserTab loginUserTab,String code);
}

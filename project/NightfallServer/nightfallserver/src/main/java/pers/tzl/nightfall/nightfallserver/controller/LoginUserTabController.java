package pers.tzl.nightfall.nightfallserver.controller;


import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import pers.tzl.nightfall.nightfallserver.common.ApiResponse;
import pers.tzl.nightfall.nightfallserver.entity.LoginUserTab;
import pers.tzl.nightfall.nightfallserver.service.LoginUserTabService;
import pers.tzl.nightfall.nightfallserver.util.VerifyUtil;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author tzl
 * @since 2021-06-21
 */
@RestController
@RequestMapping("/nightfallserver/login-user-tab")
@Api(tags = "LoginUserTabController",description = "用户登录控制器")
public class LoginUserTabController {

    @Autowired
    private LoginUserTabService loginUserTabService;

    /**
     * @Author tzl
     * @Description 验证码生成
     * @Date  2021/6/28 9:41
     * @Param []
     * @return pers.tzl.nightfall.nightfallserver.common.ApiResponse
     */
    public ApiResponse generateVerifyCode(){
        return ApiResponse.success(VerifyUtil.generateVerify());
    }

    /**
     * @Author tzl
     * @Description 账号密码登录
     * @Date  2021/6/21 12:22
     * @Param [loginUserTab, code]
     * @return pers.tzl.nightfall.nightfallserver.common.ApiResponse
     */
    @RequestMapping("/passwordLogin")
    @ApiOperation(value = "用户登录接口",notes = "用于账号密码登录")
    public ApiResponse login(LoginUserTab loginUserTab,String code) {
        return ApiResponse.success(loginUserTabService.login(loginUserTab,code));
    }
}


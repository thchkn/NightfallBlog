package pers.tzl.nightfall.nightfallserver.common;

import lombok.Data;

import java.io.Serializable;

/**
 * @ClassName ApiResponse
 * @Description TODO
 * @Author tzl
 * @Date 2021/6/21 10:39
 * @Version 1.0
 */
@Data
public class ApiResponse implements Serializable {

    private Integer status;

    private String statusText;

    private Object data;

    public static ApiResponse success(String message,Object data) {
        ApiResponse apiResponse = new ApiResponse();
        apiResponse.setStatus(200);
        apiResponse.setStatusText(message);
        apiResponse.setData(data);
        return apiResponse;
    }

    public static ApiResponse success(Object data) {
        return success("success",data);
    }

    public static ApiResponse success() {
       return success(null);
    }

    public static ApiResponse fail(String message,Object data) {
        ApiResponse apiResponse = new ApiResponse();
        apiResponse.setStatus(500);
        apiResponse.setStatusText(message);
        apiResponse.setData(data);
        return apiResponse;
    }

    public static ApiResponse fail(Object data) {
        return success("success",data);
    }

    public static ApiResponse fail() {
        return success(null);
    }
}

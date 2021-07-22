package pers.tzl.nightfall.nightfallserver.common;

import java.io.Serializable;

/**
 * @ClassName NightfallException
 * @Description TODO
 * @Author tzl
 * @Date 2021/6/22 14:16
 * @Version 1.0
 */
public class NightfallException extends RuntimeException {

    private static final long serialVersionUID = 5474974368413741800L;

    /**
     * 异常信息对象
     */
    private final Serializable object;

    public Object getObject() {
        return object;
    }

    /**
     * 异常信息提示
     * @param message
     */
    public NightfallException(String message, Serializable object) {
        super(message);
        this.object = object;
    }

    /**
     * 异常信息提示
     * @param message
     */
    public NightfallException(String message) {
        super(message);
        this.object = null;
    }

    /**
     * 异常信息提示
     * @param message
     * @param cause
     */
    public NightfallException(String message, Throwable cause) {
        super(message, cause);
        this.object = null;
    }
}

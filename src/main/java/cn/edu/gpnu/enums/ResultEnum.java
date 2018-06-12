package cn.edu.gpnu.enums;

public enum ResultEnum {

    /**
     * 成功. ErrorCode :100
     */
    SUCCESS(100,"请求成功"),
    UnknownException(404,"未知异常"),
    /**
     * 系统异常. ErrorCode : 02
     */
    SystemException(20,"系统异常"),
    /**
     * 业务错误. ErrorCode : 03
     */
    MyException(30,"业务错误"),
    /**
     * 提示级错误. ErrorCode : 04
     */
    InfoException(40, "提示级错误"),
    /**
     * 数据库操作异常. ErrorCode : 020001
     */
    DBException(50,"数据库操作异常"),
    /**
     * 参数验证错误. ErrorCode : 040001
     */
    ParamException(60,"参数验证错误");

    private int code;
    private String message;

    ResultEnum(int code,String message){
       this.code = code;
       this.message = message;
    }

    public int getCode() {
        return code;
    }

    public String getMessage() {
        return message;
    }
}

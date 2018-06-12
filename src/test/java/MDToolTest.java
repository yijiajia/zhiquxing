import com.youbenzi.mdtool.tool.MDTool;
import org.junit.Test;

/**
 * mdtool markdown 工具测试
 * github:https://github.com/cevin15/MDTool
 * 缺点是不能控制css样式，过于单一
 */
public class MDToolTest {

    private String markdown_content = "###统一处理返回结果\n" +
            "> 当后台在开发过程中，往往需要返回一个json对象给前端。当出现异常时，我们同样希望能把异常按照json格式进行返回，前端就可以根据返回json数据的状态码和信息进行相应的显示。\n" +
            "\n" +
            "这时候就需要写一个Http最外层的封装对象，统一返回的对象数据。\n" +
            "Result.java\n" +
            "```\n" +
            "public class Result<T> {\n" +
            "\n" +
            "    private Integer code;\n" +
            "\tprivate String msg;\n" +
            "\tprivate T data;\n" +
            "\n" +
            "    public Integer getCode() {\n" +
            "        return code;\n" +
            "    }\n" +
            "\n" +
            "    public void setCode(Integer code) {\n" +
            "        this.code = code;\n" +
            "    }\n" +
            "\n" +
            "    public String getMsg() {\n" +
            "        return msg;\n" +
            "    }\n" +
            "\n" +
            "    public void setMsg(String msg) {\n" +
            "        this.msg = msg;\n" +
            "    }\n" +
            "\n" +
            "    public T getData() {\n" +
            "        return data;\n" +
            "    }\n" +
            "\n" +
            "    public void setData(T data) {\n" +
            "        this.data = data;\n" +
            "    }\n" +
            "}\n" +
            "```\n" +
            "\n" +
            "根据返回数据对象可封装相应的结果模板工具类\n" +
            "ResultUtil.java\n" +
            "```\n" +
            "public class ResultUtil {\n" +
            "\n" +
            "    public static Result getOK(Object object){\n" +
            "        Result result = new Result();\n" +
            "        result.setCode(0);\n" +
            "        result.setMsg(\"成功\");\n" +
            "        result.setData(object);\n" +
            "        return result;\n" +
            "    }\n" +
            "\n" +
            "    public static Result getOK(){\n" +
            "        return getOK(null);\n" +
            "    }\n" +
            "\n" +
            "    public static Result getError(Integer code,String msg){\n" +
            "        Result result = new Result();\n" +
            "        result.setCode(code);\n" +
            "        result.setMsg(msg);\n" +
            "        return result;\n" +
            "    }\n" +
            "}\n" +
            "```\n" +
            "\n" +
            "当后台对前端传过来的数据进行判断，返回相应的结果时，可以进行统一异常处理。\n" +
            "将结果抛出，如果直接进行抛出的话，结果并不是之前我们返回的json格式，这样的处理也不友好。我们可以通过对异常的捕获，调用结果模板类（ResultUtil.java）即可返回我们封装好的json数据。\n" +
            "\n" +
            "异常捕获类ExceptionHandle.java\n" +
            "```\n" +
            "import com.demo.result.Result;\n" +
            "import com.demo.result.ResultUtil;\n" +
            "import org.springframework.web.bind.annotation.ControllerAdvice;\n" +
            "import org.springframework.web.bind.annotation.ExceptionHandler;\n" +
            "import org.springframework.web.bind.annotation.ResponseBody;\n" +
            "\n" +
            "@ControllerAdvice\n" +
            "public class ExceptionHandle {\n" +
            "    @ExceptionHandler(Exception.class)\n" +
            "    @ResponseBody\n" +
            "    public Result handle(Exception e){\n" +
            "        return ResultUtil.getError(100,e.getMessage());\n" +
            "    }\n" +
            "\n" +
            "}\n" +
            "```\n" +
            "\n" +
            "\n" +
            "如果只是利用默认Exception进行抛出结果，这样返回的状态码(code)每次都是同一个值，前端处理的时候就不好处理。这样就需要自定义一个Exception。注意这里不能继承Exception，因为 springBoot只支持继承RuntimeException的。\n" +
            "\n" +
            "自定义Exception类UserException.java\n" +
            "```\n" +
            "public class UserException extends RuntimeException {\n" +
            "\n" +
            "    private Integer code;\n" +
            "\n" +
            "    public Integer getCode() {\n" +
            "        return code;\n" +
            "    }\n" +
            "\n" +
            "    public void setCode(Integer code) {\n" +
            "        this.code = code;\n" +
            "    }\n" +
            "\n" +
            "    public UserException(Integer code,String message) {\n" +
            "        super(message);\n" +
            "        this.code = code;\n" +
            "    }\n" +
            "}\n" +
            "```\n" +
            "此时异常捕获类ExceptionHandle.java也需要更改\n" +
            "```\n" +
            "import com.demo.exception.UserException;\n" +
            "import com.demo.result.Result;\n" +
            "import com.demo.result.ResultUtil;\n" +
            "import org.slf4j.Logger;\n" +
            "import org.slf4j.LoggerFactory;\n" +
            "import org.springframework.web.bind.annotation.ControllerAdvice;\n" +
            "import org.springframework.web.bind.annotation.ExceptionHandler;\n" +
            "import org.springframework.web.bind.annotation.ResponseBody;\n" +
            "\n" +
            "@ControllerAdvice\n" +
            "public class ExceptionHandle {\n" +
            "    \n" +
            "    //增加异常日志打印\n" +
            "    private final static Logger logger = LoggerFactory\n" +
            "\t\t\t\t\t\t\t\t\t\t    .getLogger(ExceptionHandle.class);\n" +
            "\n" +
            "    @ExceptionHandler(Exception.class)\n" +
            "    @ResponseBody\n" +
            "    public Result handle(Exception e){\n" +
            "        if(e instanceof UserException){\n" +
            "            UserException userException = (UserException)e;\n" +
            "            return ResultUtil.getError(userException.getCode()\n" +
            "\t\t\t\t\t\t\t\t\t           ,userException.getMessage());\n" +
            "        }else{\n" +
            "            logger.error(\"【系统异常】={}\",e);\n" +
            "            return ResultUtil.getError(-1,\"未知错误！\");\n" +
            "        }\n" +
            "    }\n" +
            "\n" +
            "}\n" +
            "```\n" +
            "\n" +
            "\n" +
            "\n" +
            "\n" +
            "通过对结果的统一处理，可以很友好的将数据返回给前端，但此刻发现一个问题，就是每次返回数据时，状态码和信息都要在调用方法中重新定义，这样做的话状态多一点，查看和修改就有了困难。为此可定义一个枚举类，统一管理code和msg。\n" +
            "ResultEnum.java\n" +
            "```\n" +
            "public enum ResultEnum {\n" +
            "    /**\n" +
            "     * 成功. ErrorCode : 0\n" +
            "     */\n" +
            "    SUCCESS(\"0\",\"成功\"),\n" +
            "    /**\n" +
            "     * 未知异常. ErrorCode : 01\n" +
            "     */\n" +
            "    UnknownException(\"01\",\"未知异常\"),\n" +
            "    /**\n" +
            "     * 系统异常. ErrorCode : 02\n" +
            "     */\n" +
            "    SystemException(\"02\",\"系统异常\"),\n" +
            "    /**\n" +
            "     * 业务错误. ErrorCode : 03\n" +
            "     */\n" +
            "    MyException(\"03\",\"业务错误\"),\n" +
            "    /**\n" +
            "     * 提示级错误. ErrorCode : 04\n" +
            "     */\n" +
            "    InfoException(\"04\", \"提示级错误\"),\n" +
            "    /**\n" +
            "     * 数据库操作异常. ErrorCode : 020001\n" +
            "     */\n" +
            "    DBException(\"020001\",\"数据库操作异常\"),\n" +
            "    /**\n" +
            "     * 参数验证错误. ErrorCode : 040001\n" +
            "     */\n" +
            "    ParamException(\"040001\",\"参数验证错误\");\n" +
            "\n" +
            "    private String code;\n" +
            "\n" +
            "    private String msg;\n" +
            "\n" +
            "    ResultEnum(String code, String msg) {\n" +
            "        this.code = code;\n" +
            "        this.msg = msg;\n" +
            "    }\n" +
            "\n" +
            "    public String getCode() {\n" +
            "        return code;\n" +
            "    }\n" +
            "\n" +
            "    public String getMsg() {\n" +
            "        return msg;\n" +
            "    }\n" +
            "}\n" +
            "\n" +
            "```\n";

    @Test
    public void testMDToolString(){

       String html =  MDTool.markdown2Html(markdown_content);
       System.out.println(html);

    }



}

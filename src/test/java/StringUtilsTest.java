import cn.edu.gpnu.utils.StringUtils;
import org.junit.Test;

public class StringUtilsTest {

    @Test
    public void testCheckUsername(){

        System.out.println(StringUtils.checkUsername("12345698"));
        System.out.println(StringUtils.checkUsername("13451245685"));
        System.out.println(StringUtils.checkUsername("458509914@qq.com"));
        System.out.println(StringUtils.checkUsername("123@q.com"));
        System.out.println(StringUtils.checkUsername("123@qq.occ"));
    }

}

import com.jihee.biz.shelter.ShelterService;
import com.jihee.biz.shelter.ShelterVO;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import java.util.List;


public class ShelterServiceClient {

    public static void main(String[] args) {
        AbstractApplicationContext container = new GenericXmlApplicationContext("applicationContext.xml");
        ShelterService shelterService = (ShelterService) container.getBean("shelterService");

        ShelterVO vo = new ShelterVO();
        List<ShelterVO> shelterVOS = shelterService.getShelterList();
        int cnt = 0;
        for (ShelterVO shelterVO: shelterVOS){
            System.out.println("record " + cnt + ": " + shelterVO.toString());
            cnt ++;
        }
        //
        vo.setSname("λΉμ°");
        vo.setAddress("μμ");
        shelterVOS  = shelterService.getShelter(vo);
        cnt = 0;
        for (ShelterVO shelterVO: shelterVOS){
            System.out.println("record " + cnt + ": " + shelterVO.toString());
            cnt ++;
        }


    }
}

package serviceTest;


import org.junit.Test;
import model.TestOne;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:springmvc.xml","classpath:ApplicationContext.xml"})
@WebAppConfiguration("src/main/resources")
public class TestTestService {


    }



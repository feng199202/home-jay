package daoimpltest;

 import static org.junit.Assert.assertEquals;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.tarena.netctoss.dao.ISystemModuleDao;
import com.tarena.netctoss.entity.SystemModule;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring/applicationContext.xml" })
public class SytemModuleImplTest {
	
	@Autowired
	private ISystemModuleDao isystemModuleDao;
	
	public SystemModule systemModule = null;
	@Before
	public void setUp(){
		systemModule = new SystemModule();
	}
	@Test
	public void testAddSystemModule(){
		systemModule.setSystemModuleName("权限管理");
		systemModule.setUrl("www.cctv.com");
		int a =isystemModuleDao.addSystemModule(systemModule);
		assertEquals(7,a);
	}
	@Test
	public void testListAllSystemModules(){
		
		 List<SystemModule> modules = isystemModuleDao.listSystemModule(); 
		 for (SystemModule systemModule : modules) {
			 System.out.println(systemModule.getSystemModuleName());
		}
	}
}

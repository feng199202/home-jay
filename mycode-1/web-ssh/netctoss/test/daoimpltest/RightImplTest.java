package daoimpltest;

import static org.junit.Assert.assertEquals;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.tarena.netctoss.dao.IRightDao;
import com.tarena.netctoss.entity.Right;
import com.tarena.netctoss.entity.SystemModule;
import com.tarena.netctoss.util.Page;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring/applicationContext.xml" })
public class RightImplTest {
	@Autowired
	private IRightDao irghtDao;

	public Right right = null;
	public SystemModule systemModule;

	@Before
	public void setUp() {
		right = new Right();
		systemModule = new SystemModule();
	}

	@Test
	public void testAddRight() {
		systemModule.setSystemModuleId(2);
		right.setRightName("管理员删除");
		right.setUrl("deleteAdmin");
		right.setSystemModule(systemModule);
		int a = irghtDao.addRight(right);
		assertEquals(4, a);

	}

	@Test
	public void testDeleteRight() {
		right.setRightId(1);
		int a = irghtDao.deleteRightById(right);
		assertEquals(1, a);

	}

	@Test
	public void testListRights() {
		Page page = new Page();
		page.setPageSize(1);
		right.setRightName("修改");
		page.setCountRow((int) irghtDao.countRows(right));

		List<Right> rights = irghtDao.listRights(right, page);
		for (Right right : rights) {
			System.out.println(right.getRightName());
		}
	}

	@Test
	public void testUpdateRight() {
		SystemModule systemModule = new SystemModule();
		systemModule.setSystemModuleId(3);
		right.setRightId(3);
		right.setRightName("管理员吃法");
		right.setSystemModule(systemModule);
		right.setUrl("chifa");
		int a = irghtDao.updateRightById(right);
		assertEquals(1, a);
	}

	@Test
	public void testfindRight() {
		
		right.setRightId(3);
		Right right1 = irghtDao.findRightById(right);
		assertEquals("管理员修改",right1.getRightName());
		
	}
	@Test
	public void testFindRightByName(){
		
		right.setRightName("权限浏览");
		Right ri = irghtDao.findRightByName(right);
		System.out.println(ri.getRightId());
	}

}

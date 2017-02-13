package daoimpltest;

import static com.tarena.netctoss.util.StringUtil.stringToDate;
import static org.junit.Assert.assertEquals;

import java.text.ParseException;
import java.util.Date;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.tarena.netctoss.dao.IAdminDao;
import com.tarena.netctoss.entity.Admin;
import com.tarena.netctoss.entity.Role;
import com.tarena.netctoss.util.Page;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring/applicationContext.xml" })
public class AdminDaoImplTest {
	@Autowired
	private IAdminDao iadminDao;
	private Admin admin;
	@Before
	public void setUp(){
		 admin = new Admin();
	}
	@Test
	public void tesetAddAdmin() {
		
		Admin admin = new Admin();
		admin.setAccountName("admin");
		admin.setAdminEmail("abc@gmail.com");
		admin.setAdminPhone("19888888");
		admin.setEnrollDate(new Date());
		admin.setPassword("1");
		admin.setRealName("胡锦涛");
		
		Role role = new Role();
		role.setRoleId(1);
		admin.setRole(role);
		
		int a = iadminDao.addAdmin(admin);
		assertEquals(10, a);
		
	}
	@Test
	public void testFinAdminByName(){
		admin.setAccountName("adm01");
		Admin admin1 = iadminDao.findAdminByName(admin);
		assertEquals("1234", admin1.getPassword());
		assertEquals("胡锦涛", admin1.getRealName());
	}
	
	@Test
	public void testUpdateAdminInfo(){
		
		Admin admin = new Admin();
		admin.setAdminId(1);
		admin.setAccountName("admin");
		admin.setAdminEmail("xjp@gmail.com");
		admin.setAdminPhone("19999999");
		admin.setPassword("1234");
		admin.setRealName("胡锦涛");		
		Role role = new Role();
		role.setRoleId(1);
		admin.setRole(role);
		int a = iadminDao.updateAdminInfo(admin);
		assertEquals(10, a);
	}
	@Test
	public void testDeleteAdmin(){
		admin.setAdminId(4);
		int a = iadminDao.deleteAdmin(admin);
		assertEquals(1, a);
	}
	
	
	@Test
	public void testUpatePassword(){
		admin.setAdminId(1);
		admin.setPassword("2222");
		int a = iadminDao.updateSelfPassword(admin);
		assertEquals(1, a);
	}
	
	
	@Test
	public void testListAdmins() throws ParseException{
		admin.setAccountName("xi");
		
		Date beginDate = stringToDate("yyyy-MM-dd", "2012-08-05");
		Page page = new Page();
		Date endDate = stringToDate("yyyy-MM-dd", "2012-08-08");
		System.out.println(endDate);
		page.setCountRow((int)iadminDao.countRows(admin, beginDate, endDate));
		page.setPageSize(10);
		List<Admin> admins = iadminDao.listAdmins(admin,page , beginDate, endDate);
		for (Admin admin : admins) {
			System.out.println(admin.getAccountName());
		}
		
	}
	
	@Test
	public void  testFindAdminById(){
		admin.setAdminId(1);
		Admin admin1 = iadminDao.findAdminById(admin);
		System.out.println(admin1.getRole().getRights().size());
		assertEquals("习近平", admin1.getRealName());
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}

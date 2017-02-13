package daoimpltest;

import static org.junit.Assert.assertEquals;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.tarena.netctoss.dao.IUserDao;
import com.tarena.netctoss.entity.User;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring/applicationContext.xml" })
public class UserDaoImplTest {

	@Autowired
	private IUserDao iuserDao;
	
	@Test 
	@Ignore
	public void testAddUser(){
		User user =new User();
		user.setRealName("yw");
		user.setCareer("teacher");
		user.setCompany("neuSoft");
		user.setGender((byte)1);
		user.setPassword("12345");
		user.setNationnality("Korea");
		user.setZipCode("1100113");
		user.setUserPhone("1234567890");
		int a =iuserDao.addUser(user);
		assertEquals(4, a);
	}
	@Test
	@Ignore
	public void testUpdateUserInfo(){
		User user=new User();
		user.setAccountName("ywei");
		user.setRealName("liuqian");
		user.setCareer("engineer");
		user.setPassword("woailiuqian");
		user.setGender((byte)1);
		user.setCompany("NewNorth");
		user.setNationnality("China");
		user.setUserPhone("1533300030454");
		int a=iuserDao.updateUserInfo(user);
		assertEquals(6, a);
	}
	
	 @Test
	 @Ignore
		public void  testFindUserByName(){
			User user = new User();
			user.setAccountName("ywei");
			User u=iuserDao.findUserByName(user);
			assertEquals("woailiuqian", u.getPassword());
			
		}
	 
	 @Test
	 public void testUpdatePassword(){
	 User user = new User();
	 user.setUserId(1);
	 user.setPassword("12");
	 assertEquals(1, iuserDao.updateUserPassword(user));
	 }
	 @Test
	public void testUpdateSelfInfo(){
		 
		 
		 User user = new User();
		 user.setCareer("软件工程师");
		 user.setNationnality("汉");
		 user.setRealName("李开复");
		 user.setGender((byte)1);
		 user.setPaymentType("银行卡");
		 user.setCompany("Google");
		 user.setUserId(1);
		 user.setUserEmail("kaifulee@google.com");
		 user.setZipCode("1000000");
		 user.setUserPhone("12323213");
		 assertEquals(1, iuserDao.updateSelfInfo(user));
		 
	 }
}

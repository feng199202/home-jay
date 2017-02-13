package daoimpltest;

import static org.junit.Assert.assertEquals;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.tarena.netctoss.dao.IRoleDao;
import com.tarena.netctoss.entity.Right;
import com.tarena.netctoss.entity.Role;
import com.tarena.netctoss.util.Page;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring/applicationContext.xml" })
public class RoleDaoImplTest {
	@Autowired
	private IRoleDao iroleDao;

	private Role role = null;

	@Before
	public void setUP() {
		role = new Role();
	}

	@Test
	public void testAddRole() {
		Right right = new Right();
		Right right2 = new Right();
		Right right3 = new Right();
		Right right4 = new Right();
		Right right5 = new Right();
		right2.setRightId(2);
		right.setRightId(1);
		right3.setRightId(3);
		right4.setRightId(4);
		right5.setRightId(5);
		Set<Right> rights = new HashSet<Right>();
		rights.add(right);
		rights.add(right2);
		rights.add(right3);
		rights.add(right4);
		rights.add(right5);
		role.setRights(rights);
		role.setRoleName("manageAdmin");
		int a = iroleDao.addRole(role);
		assertEquals(3, a);

	}

	@Test
	public void testListRoles() {

		role.setRoleName("admin");
		Page page = new Page();

		page.setPageSize(2);
		page.setCountPage((int) iroleDao.countRows(role));
		List<Role> roles = iroleDao.listRoles(role, page);

		for (Role role : roles) {
			System.out.println(role.getRoleName());
		}

	}

	@Test
	public void testUpateRoles() {
		Role role1 = new Role();
		Right right = new Right();
		Right right2 = new Right();

		right2.setRightId(3);
		right.setRightId(4);

		Set<Right> rights = new HashSet<Right>();

		rights.add(right);
		rights.add(right2);

		role1.setRoleId(2);
		role1.setRights(rights);
		role1.setRoleName("pricingAdmin");

		int a = iroleDao.updateRole(role1);
		assertEquals(1, a);

	}

	@Test
	public void testDeleteRole() {
		role.setRoleId(2);
		int a = iroleDao.deleteRoleById(role);

		assertEquals(1, a);
	}

	@Test
	public void testFindRoleById() {
		role.setRoleId(1);
		Role role1 = iroleDao.findRoleById(role);
		Set<Right> rights = role1.getRights();
		for (Right right : rights) {
			System.out.println("rightName:"+right.getRightName());
		}
	}
	@Test
	public void testFindRoleByName(){
		
		role.setRoleName("超级管理员");
		Role role2 = iroleDao.findRoleByName(role);
		System.out.println(role2.getRoleId());
	}

}

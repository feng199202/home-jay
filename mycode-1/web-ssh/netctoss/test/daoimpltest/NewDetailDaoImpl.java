package daoimpltest;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.tarena.netctoss.dao.IDetailDao;
import com.tarena.netctoss.entity.Detail;
import com.tarena.netctoss.entity.User;
import com.tarena.netctoss.util.Page;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring/applicationContext.xml" })
public class NewDetailDaoImpl {

	@Autowired
	private IDetailDao idetailDao;
	
	@Test
	public void testListDetailsByUesrNameAndLoginNameMonthly(){
		Page page = new Page();
		page.setPageSize(10);
		User user = null;
		Detail detail = null;
		List<Object[]> details = idetailDao.listDetailsByUesrNameAndLoginNameMonthly(user, page, detail);
		for (Object[] objects : details) {
			for (Object object : objects) {
				System.out.println(object);
			}
		}
	}
}

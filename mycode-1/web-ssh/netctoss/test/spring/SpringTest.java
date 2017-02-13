package spring;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class SpringTest {

	private static Log log = LogFactory.getLog(SpringTest.class);
	public static void main(String[] args) {
		ApplicationContext ac = new FileSystemXmlApplicationContext("classpath:spring/applicationContext.xml");
		log.info("spring≈‰÷√ok");

	}

}

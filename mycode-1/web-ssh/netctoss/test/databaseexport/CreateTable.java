package databaseexport;

import org.hibernate.cfg.Configuration;
import org.hibernate.tool.hbm2ddl.SchemaExport;

public class CreateTable {
	private static final String HIBERNATE_FILE = "hibernate/cfg/hibernate.cfg.xml";

	public static void main(String[] args) {
		new SchemaExport(new Configuration().configure(HIBERNATE_FILE)).create(
				true, true);

	}
}

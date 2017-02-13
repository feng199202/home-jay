package com.tarena.netctoss.util;

/**
 * 分页用的page 工具类
 * 
 * @author debian
 * 
 */
public class Page {

	public Page() {

	}

	public Page(int pageNo, int pageSize) {
		this.pageNo = pageNo;
		this.pageSize = pageSize;
	}

	/**
	 * 当前页数
	 */
	private int pageNo = 1;
	/**
	 * 每页显示行数
	 */
	private int pageSize = 10;
	/**
	 * 启始行
	 */
	@SuppressWarnings("unused")
	private int begin;
	/**
	 * 总条数
	 */
	private int countRow = 12;
	/**
	 * 总页数
	 * 
	 * @return
	 */
	private int countPage;

	/**
	 * 显示分页信息
	 */
	@SuppressWarnings("unused")
	private String pageInfo;

	public int getCountPage() {
		if (countRow % pageSize == 0) {
			countPage = countRow / pageSize;
		} else {
			countPage = countRow / pageSize + 1;
		}
		return countPage;
	}

	public void setCountPage(int countPage) {
		this.countPage = countPage;
	}

	public int getCountRow() {
		return countRow;
	}

	public void setCountRow(int countRow) {
		this.countRow = countRow;
	}

	public int getBegin() {
		return (pageNo - 1) * pageSize;
	}

	public void setBegin(int begin) {
		this.begin = begin;
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public void setPageInfo(String pageInfo) {
		this.pageInfo = pageInfo;
	}

	public String getPageInfo() {
		// 显示分页信息

		return script() + basePage();
	}

	public String script() {

		return "<script type=\"text/javascript\">\n"
				+ "\tfunction subPage(pageN){\n"
				+ "\t\tdocument.getElementById('pageNoInput').value=pageN;\n"
				+ "\t\tdocument.pageForm.submit();\n"
				+ "\t}\n"
				+ "</script>\n"
				+ "<input id='pageNoInput' name=\"page.pageNo\" type=\"hidden\" value=\"1\"/>\n";
	}

	public String basePage() {
		String str = "共" + this.getCountPage() + "页," + this.getCountRow()
				+ "条 ";
		if (this.pageNo != 1) {
			str += "<a href=\"javascript:subPage(1)\">[首页]</a>\n"
					+ "<a href=\"javascript:subPage(" + (this.getPageNo() - 1)
					+ ")\">[上一页]</a>\n";
		}
		if (this.pageNo < this.getCountPage()) {
			str += "<a href=\"javascript:subPage(" + (this.getPageNo() + 1)
					+ ")\">[下一页] </a>\n" + "<a href=\"javascript:subPage("
					+ this.getCountPage() + ")\">[尾页]</a>";
		}

		return str;
	}

}
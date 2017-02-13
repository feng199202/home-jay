package com.tarena.netctoss.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class StringUtil {

	/**
	 * 将输入的日期转换为想要的日期格式的Date 类型
	 * 
	 * @param pattern
	 * @param dateInput
	 * @return
	 * @throws ParseException
	 */
	public static Date stringToDate(String pattern, String dateInput)
			throws ParseException {

		return new SimpleDateFormat(pattern).parse(dateInput);

	}

	// 判断字符串是否为空
	public static boolean stringIsNullOrEmpty(String input) {

		return ("".equals(input) || input == null);
	}

}

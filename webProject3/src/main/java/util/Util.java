package util;

import java.time.LocalDateTime;
import java.util.Date;
import java.sql.*;
import java.text.DecimalFormat;

public class Util {
	public static LocalDateTime dateToLocalDateTime(Date date) {
		if (date == null)
			return LocalDateTime.MIN;
		return new java.sql.Timestamp(date.getTime()).toLocalDateTime();
	}
	
	public static int parseInt(String o) {
		try {
			return Integer.parseInt(o);
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			return Integer.MIN_VALUE;
		}
	}
	
	public static String formatNum(int num) {
		DecimalFormat formatter = new DecimalFormat("#,###원");
		return formatter.format(num);
	}
}

package util;

import java.time.LocalDateTime;
import java.util.Date;
import java.sql.*;

public class Util {
	public static LocalDateTime dateToLocalDateTime(Date date) {
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
}

package com.dms.app.util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateUtil {
	
	public static final String MMDDYYYY = "MM/dd/yyyy";
	
	public static Date getDateByFormat(String date) throws ParseException {
		DateFormat df = new SimpleDateFormat(MMDDYYYY);		
		return df.parse(date);		
	}
	
	public static Date getDateByFormat(String date, String pattern) throws ParseException {
		DateFormat df = new SimpleDateFormat(pattern);		
		return df.parse(date);		
	}
	
	public static java.sql.Date getSqlDate(String date) throws ParseException {
		java.util.Date utilDate = getDateByFormat(date, MMDDYYYY);
		return new java.sql.Date(utilDate.getTime());		
	}
	
	public static java.sql.Date getSqlDateByFormat(String date, String pattern) throws ParseException {
		java.util.Date utilDate = getDateByFormat(date, pattern);
		return new java.sql.Date(utilDate.getTime());		
	}
	
	public static java.sql.Date getCurrentSqlDate() {
        java.util.Date currentDate = new java.util.Date();
        return new java.sql.Date(currentDate.getTime());
	}
	
	 public static Date addDays(Date date, int duration) {
		   return add(date, Calendar.DAY_OF_MONTH, duration);
	    }
	
	public static Date add(Date date, int calendarField, int duration) {
      if (date == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        Calendar c = Calendar.getInstance();
        c.setTime(date);
        c.add(calendarField, duration);
        return c.getTime();
    }
	
	public static String getStringDateByFormat(Date date) throws ParseException {
		String strDate = "";
		if (date != null) {
			strDate = new SimpleDateFormat(MMDDYYYY).format(date);
		}
		return strDate;
	}
}

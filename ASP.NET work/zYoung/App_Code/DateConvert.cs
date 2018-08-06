using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DateConvert
/// </summary>
public class DateConvert
{
   static string date;
    public DateConvert()
    {
        
    }
    public static string GetDate(DateTime mdate)
    {
        mdate = DateTime.Now;
        //lblMessage.Text = mdate.ToLongDateString();


        date = mdate.Year + "-" + mdate.Month + "-" + mdate.Day + " " + mdate.Hour + ":" + mdate.Minute + ":" + mdate.Second;

        return date;
    }
}
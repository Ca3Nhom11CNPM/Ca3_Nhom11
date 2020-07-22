package vn.edu.nlu.fit.Utill;

import javax.servlet.http.HttpServletRequest;

public  class Util{
    static final String HOST="http://localhost:8080/Demo/";
    public static String fullPath(String path){
        return HOST+path;

    }
    public static String getParam(HttpServletRequest re, String name){
        return re.getParameter(name)== null ? "" : re.getParameter(name).trim();
    }
    public static <T> T getParamGen ( HttpServletRequest re, String name){
        return  re.getParameter(name)== null ? null : (T) re.getParameter(name).trim();
    }

}
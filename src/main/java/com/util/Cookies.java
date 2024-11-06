package com.util;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

public class Cookies {   
   
   //        키:쿠키이름  값:쿠키객체
   public Map<String, Cookie> cookieMap = new HashMap<>();
   
   // 생성자 - 쿠키를 map안에 채워넣는 작업
   public Cookies( HttpServletRequest request ) {
      Cookie []  cookies = request.getCookies();
      if( cookies != null ) {
         for (Cookie c : cookies) {
            String cname =  c.getName();
            cookieMap.put(cname, c);
         } // for
      } // if
   }
   
   public Cookie getCookie( String cname ) {
      return this.cookieMap.get(cname);
   }
   
   // 쿠키가 있는지 여부 판단
   public boolean exists( String cname ) {
      return this.cookieMap.get(cname)  != null ;  // true, false
   }
   
   // 쿠키 name,value 있으면 -> 쿠키 생성하여 리턴
   public static Cookie createCookie(String cname, String cvalue) throws UnsupportedEncodingException {
      Cookie c = new Cookie( cname, URLEncoder.encode(cvalue, "UTF-8"));
      return c;
   }
   
   // 쿠키 생성, 옵션이 더 달림
   public static Cookie createCookie(String cname, String cvalue, String path, int expiry) throws UnsupportedEncodingException {
      Cookie c = new Cookie( cname, URLEncoder.encode(cvalue, "UTF-8"));
      c.setPath(path);
      c.setMaxAge(expiry);
      return c;
   }
   
   public static Cookie createCookie(String cname, String cvalue, String domain, String path, int expiry) throws UnsupportedEncodingException {
      Cookie c = new Cookie( cname, URLEncoder.encode(cvalue, "UTF-8"));
      c.setDomain(domain);
      c.setPath(path);
      c.setMaxAge(expiry);
      return c;
   }
   
   // 쿠키 name주면 value값 리턴
   public String getValue( String cname) throws UnsupportedEncodingException {
      String cvalue = null; 
      Cookie c =  this.cookieMap.get(cname);
      if( c != null ) {
          cvalue = URLDecoder.decode(c.getValue(), "UTF-8");
      } 
      return cvalue;
   }

}






package utils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CookieManager {

	// 이름, value, 유지시간 쿠키 생성
	public static void makeCookie(HttpServletResponse resp, String cookieName, String cookieVal, int cookieTime) {
		Cookie cookie = new Cookie(cookieName, cookieVal);
		cookie.setPath("/"); // 경로를 전체 경로 -> 전체 쿠키를 사용하겠다는 의미
		cookie.setMaxAge(cookieTime);
		resp.addCookie(cookie);
	}

	// 생성된 쿠키 또는 이름으로 쿠키 찾기
	public static String readCookie(HttpServletRequest req, String cookieName) {
		String cookieValue = "";
		Cookie[] cookies = req.getCookies();
		if (cookies != null) {
			for (Cookie c : cookies) {
				String cName = c.getName();
				if (cName.equals(cookieName)) {
					cookieValue = c.getValue();
				}
			}
		}
		return cookieValue;
	}

	// 쿠키 제거
	public static void deleteCookie(HttpServletResponse resp, String cookieName) {
		makeCookie(resp, cookieName, "", 0);
	}

}

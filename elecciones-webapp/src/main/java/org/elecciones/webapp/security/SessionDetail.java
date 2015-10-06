package org.elecciones.webapp.security;

import org.elecciones.core.security.User;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;

/**
 * 
 * @author ocalsin
 *
 */

public class SessionDetail {

	protected SessionDetail() {
	}

	public static User getUserDetails() {
		User userBean = null;
		SecurityContext securityCtx = SecurityContextHolder.getContext();
		if (securityCtx != null && securityCtx.getAuthentication() != null
				&& securityCtx.getAuthentication().getPrincipal() != null) {
			try {
				userBean = (User) securityCtx.getAuthentication().getDetails();
			} catch (Exception e) {
				System.out.println("ERROR:" + e.getMessage());
			}
		}
		return userBean;
	}

	public static Authentication getAuthentication() {
		Authentication authentication = null;
		SecurityContext securityCtx = SecurityContextHolder.getContext();
		if (securityCtx != null && securityCtx.getAuthentication() != null
				&& securityCtx.getAuthentication().getPrincipal() != null) {
			try {
				authentication = securityCtx.getAuthentication();
			} catch (Exception e) {
				System.out.println("ERROR:" + e.getMessage());
			}
		}
		return authentication;
	}
}

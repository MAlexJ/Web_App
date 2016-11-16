package com.malex.controller;

import com.malex.controller.base.AbstractController;
import org.apache.log4j.Logger;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author malex
 */
public class LoginController extends AbstractController {

    private static final Logger LOG = Logger.getLogger(LoginController.class);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        boolean isLogin = false;

        Cookie[] cookies = req.getCookies();
        for (Cookie cookie : cookies) {
            if (cookie.getValue().equals("true")) {
                isLogin = true;
            }
        }

        if (isLogin) {
            req.setAttribute("flag", "flowers");
        } else {
            String user_name = req.getParameter("user_name");
            String password = req.getParameter("password");
            LOG.debug("user_name: " + user_name + ", password: " + password);
            Cookie cookie = new Cookie("Login", "true");
            resp.addCookie(cookie);
            req.setAttribute("flag", "login");
        }

        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        LOG.debug("Logout user!");
        req.setAttribute("flag", "logout");

        Cookie cookie = new Cookie("Login", "false");
        resp.addCookie(cookie);

        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }
}

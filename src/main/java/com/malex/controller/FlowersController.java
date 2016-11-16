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
public class FlowersController extends AbstractController {

    private static final Logger LOG = Logger.getLogger(FlowersController.class);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        LOG.debug(">>> doPost");
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
            req.setAttribute("flag", "logout");
        }

        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        LOG.debug(">>> doGet");
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
            req.setAttribute("flag", "logout");
        }

        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }

}

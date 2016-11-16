package com.malex.controller;

import com.malex.controller.base.AbstractController;
import org.apache.log4j.Logger;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author malex
 */
public class ShoppingСartController extends AbstractController {
    private static final Logger LOG = Logger.getLogger(ShoppingСartController.class);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        LOG.debug(">>> doPost");
        req.setAttribute("flag", "my_cart");
        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        LOG.debug(">>> doGet");
        req.setAttribute("flag", "my_cart");
        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }
}

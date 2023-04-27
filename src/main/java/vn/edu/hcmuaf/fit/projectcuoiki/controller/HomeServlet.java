package vn.edu.hcmuaf.fit.projectcuoiki.controller;

import vn.edu.hcmuaf.fit.model.projectcuoiki.Product;
import vn.edu.hcmuaf.fit.service.projectcuoiki.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeController", value = {"", "/home"})
public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().setAttribute("currentPage", "home");

        List<Product> list = new ProductService().getAllProduct();
        request.setAttribute("listAllProduct", list);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}

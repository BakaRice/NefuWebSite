package com.controller;


import com.entity.News;
import com.service.NewsService;
import com.service.ServiceFactory;
import com.service.impl.NewsServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Logger;

@WebServlet("/info")
public class ShowNewsServlet extends HttpServlet {
    private static Logger logger = Logger.getLogger(ShowNewsServlet.class.getName());

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String newsId = req.getParameter("id");
       logger.info("爷尽力的把新闻转向了这个页面，并且这个页面id是"+newsId);
        NewsService newsService = ServiceFactory.getNewsService();
        News news = newsService.getNews(Integer.parseInt(newsId));//stirng 转 int
        logger.info(news.getName());
        req.setAttribute("news", news);
        req.getRequestDispatcher("/WEB-INF/jsp/SingleNews.jsp")
                .forward(req, resp);
    }
}

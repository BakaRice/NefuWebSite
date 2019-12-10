package com.controller;

import com.entity.News;
import com.service.NewsService;
import com.service.ServiceFactory;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.sql.Timestamp;
import java.time.LocalDateTime;

@WebServlet("/addNews")
public class addNewsServlet extends HttpServlet {
    private NewsService newsService = ServiceFactory.getNewsService();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String title = req.getParameter("name");
        System.out.print(req.getParameter("showtime"));
        String time = req.getParameter("showtime");
        //很蠢的方法把时间转换为时间戳再转进去
        String times[] = time.split("T");
        System.out.print(times[0]+" "+times[1]+":00");
        Timestamp showtime =Timestamp.valueOf(times[0]+" "+times[1]+":00");//Timestamp.valueOf(req.getParameter("showtime"));

        String editor = req.getParameter("editor");
        String content = req.getParameter("content");
        System.out.print(title);
        System.out.print(content);
        News news = new News(title,showtime, editor, content);
        System.out.print("1"+news.getName()+news.getShowTime()+news.getInsertTime()+news.getContent());
       newsService.addNews(news);

        resp.sendRedirect(req.getContextPath() + "/listnew");

    }
}

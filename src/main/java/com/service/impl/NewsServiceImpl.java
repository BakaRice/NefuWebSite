package com.service.impl;

import java.sql.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

import com.entity.News;
import com.service.NewsService;
import com.util.DataSourceUtils;

public class NewsServiceImpl implements NewsService {
    private static Logger logger = Logger.getLogger(NewsServiceImpl.class.getName());

    @Override
    public void addNews(News news) {
        String sql = "INSERT INTO News(name, Insert_Time, Show_Time,editor,content) VALUES(?,?,?,?,?)";
        logger.info("准备执行sql语句");
        //System.out.print(news.getName()+news.getShowTime()+news.getInsertTime()+news.getContent());
        //INSERT INTO `news` (`name`, `Insert_Time`, `Show_Time`, `editor`, `content`) VALUES ('232', '2019-11-13 12:04:06', '2019-11-20 12:04:09', '23', '23')
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement st = conn.prepareStatement(sql)) {
            st.setString(1, news.getName());
            st.setTimestamp(2, Timestamp.valueOf(LocalDateTime.now()));
            st.setTimestamp(3, news.getShowTime());
            st.setString(4, news.getEditor());
            st.setString(5, news.getContent());
            st.executeUpdate();
        } catch (SQLException e) {
            logger.warning(e.getMessage());
        }
    }

    @Override
    public List<News> listNewss() {
        List<News> Newss = new ArrayList<>();
        String sql = "SELECT * FROM News ORDER BY Insert_Time desc";//查询出的数据按照降序来排列
        logger.info("准备执行该语句");
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement st = conn.prepareStatement(sql);
             ResultSet rs = st.executeQuery()) {
            while (rs.next()) {
                News news = new News(rs.getInt(1), rs.getString(2), rs.getTimestamp(3), rs.getTimestamp(4), rs.getString(5), rs.getString(6));
//                if (news.getShowTime() == null)
//                    news.setShowTime(news.getInsertTime());
                logger.info("?"+news.getId());
                Newss.add(news);

            }
        } catch (SQLException e) {
            logger.warning(e.getMessage());
        }
        return Newss;
    }

    @Override
    public News getNews(int id) {
        News news = null;
        String sql = "SELECT * FROM News WHERE id=?";
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement st = conn.prepareStatement(sql)) {
            st.setInt(1, id);
            try (ResultSet rs = st.executeQuery()) {
                while (rs.next()) {
                    news = new News(rs.getInt(1), rs.getString(2), rs.getTimestamp(3), rs.getTimestamp(4), rs.getString(5), rs.getString(6));
                }

            }
        } catch (SQLException e) {
            logger.warning(e.getMessage());
        }
        return  news;
    }

    @Override
    public void updateNews(News News) {
        String sql = "UPDATE News SET name=? WHERE id=?";
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement st = conn.prepareStatement(sql)) {
            st.setString(1, News.getName());
            st.setInt(2, News.getId());
            st.executeUpdate();
        } catch (SQLException e) {
            logger.warning(e.getMessage());
        }
    }
}
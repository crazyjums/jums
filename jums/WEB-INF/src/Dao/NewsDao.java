package Dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import connect.DBGet;
import entity.News;

public class NewsDao {

	public boolean insert(News news) {
		boolean result = false;
		int n = 0;
		Connection conn = null;
//		Statement stmt = null;
		PreparedStatement ps = null;
		try {

			conn = DBGet.getConnection();
			// 4 创建Statement对象
//			stmt = conn.createStatement();

			// 5 执行sql语句
			String sql = "insert into news(type,title,author,contents,public_time)"
					+ " values(?,?,?,?,?)";			
//			n = stmt.executeUpdate(sql);
			ps=conn.prepareStatement(sql);
			ps.setString(1, news.getType());
			ps.setString(2, news.getTitle());
			ps.setString(3, news.getAuthor());
			ps.setString(4, news.getContents());
			ps.setDate(5, news.getPublic_time());
			n = ps.executeUpdate();
		} catch (SQLException e1) {
			System.out.println(e1 + "插入失败");
		} finally {
			// 7 关闭链接
			DBGet.closeConnection(conn);
		}
		if (n > 0)
			result = true;
		return result;
	}

	public ArrayList<News> getAll() {
		News news = null;
		ArrayList<News> newsList = new ArrayList<News>();

		Connection conn = null;
		ResultSet rs = null;
//		Statement stmt = null;
		PreparedStatement ps = null;
		try {

			conn = DBGet.getConnection();
			// 4 创建Statement对象
//			stmt = conn.createStatement();

			// 5 执行sql语句
			String sql = "SELECT * from news";
			ps=conn.prepareStatement(sql);
			rs =ps.executeQuery();
//			 stmt.esxecuteQuery(sql);

			// 6 处理结果
			while (rs.next()) {
				news = new News();
				news.setId(rs.getInt("id"));
				news.setAuthor(rs.getString("author"));
				news.setContents(rs.getString("contents"));
				news.setTitle(rs.getString("title"));
				news.setType(rs.getString("type"));
				news.setPublic_time(rs.getDate("public_time"));

				newsList.add(news);
			}

		} catch (SQLException e1) {
			System.out.println(e1 + "查询失败");
		} finally {
			// 7 关闭链接
			DBGet.closeConnection(conn);
		}
		return newsList;
	}
	public ArrayList<News> getNewsById(int id) {
		News news = null;
		ArrayList<News> newsList = new ArrayList<News>();

		Connection conn = null;
		ResultSet rs = null;
//		Statement stmt = null;
		PreparedStatement ps = null;
		try {

			conn = DBGet.getConnection();
			// 4 创建Statement对象
//			stmt = conn.createStatement();

			// 5 执行sql语句
			String sql = "SELECT * from news where id=?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, id);
			rs =ps.executeQuery();


			// 6 处理结果
			while (rs.next()) {
				news = new News();
				news.setId(rs.getInt("id"));
				news.setAuthor(rs.getString("author"));
				news.setContents(rs.getString("contents"));
				news.setTitle(rs.getString("title"));
				news.setType(rs.getString("type"));
				news.setPublic_time(rs.getDate("public_time"));

				newsList.add(news);
			}

		} catch (SQLException e1) {
			System.out.println(e1 + "查询失败");
		} finally {
			// 7 关闭链接
			DBGet.closeConnection(conn);
		}
		return newsList;
	}

	public boolean deleteById(int id) {
		boolean result = false;
		Connection conn = null;
		int n=0;
		PreparedStatement ps =null;
		try {

			conn = DBGet.getConnection();
			// 4 创建Statement对象
//			stmt = conn.createStatement();

			// 5 执行sql语句
			String sql = "delete from news where id=?";
//			rs = stmt.executeQuery(sql);
			ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			n = ps.executeUpdate();

			// 6 处理结果
			if (n>0)
				result = true;//删除成功
		} catch (SQLException e1) {
			System.out.println(e1 + "删除失败");
		} finally {
			// 7 关闭链接
			DBGet.closeConnection(conn);
		}
		return result;
	}
	public boolean update(News news) {
		boolean result = false;
		Connection conn = null;
		int n=0;
//		Statement stmt = null;
		PreparedStatement ps =null;
		try {

			conn = DBGet.getConnection();
			// 4 创建Statement对象
//			stmt = conn.createStatement();

			// 5 执行sql语句
			String sql = "update news set type=?,title=?,author=?,contents=?,public_time=? where id=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, news.getType());
			ps.setString(2, news.getTitle());
			ps.setString(3, news.getAuthor());
			ps.setString(4, news.getContents());
			ps.setDate(5, news.getPublic_time());
			ps.setInt(6, news.getId());
			n = ps.executeUpdate();

			// 6 处理结果
			if (n>0)
				result = true;//删除成功
		} catch (SQLException e1) {
			System.out.println(e1 + "删除失败");
		} finally {
			// 7 关闭链接
			DBGet.closeConnection(conn);
		}
		return result;
	}
	public static void main(String[] args) {
		News nn = new News();
		nn.setAuthor("111");
		nn.setContents("11111");
		nn.setId(16);
		nn.setAuthor("1111");
		
		nn.setPublic_time(null);
		nn.setType("111111");
		NewsDao vv = new NewsDao();
		vv.update(nn);
		
	}



}

package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import connect.DBGet;
import entity.Comments;

public class CommentsDao {


	public boolean insert(Comments comments) {
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
			String sql = "insert into comments(userid,nickname,contents) values(?,?,?)";			
//			n = stmt.executeUpdate(sql);
			ps.setString(1, comments.getUserid());
			ps.setString(2, comments.getNickname());
			ps.setString(3, comments.getContents());
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

	public ArrayList<Comments> getAll() {
		Comments comments = null;
		ArrayList<Comments> commentsList = new ArrayList<Comments>();

		Connection conn = null;
		ResultSet rs = null;
//		Statement stmt = null;
		PreparedStatement ps = null;
		try {

			conn = DBGet.getConnection();
			// 4 创建Statement对象
//			stmt = conn.createStatement();

			// 5 执行sql语句
			String sql = "SELECT * from comments";
			ps=conn.prepareStatement(sql);
			ps.executeQuery();
//			rs = stmt.esxecuteQuery(sql);

			// 6 处理结果
			while (rs.next()) {
				comments = new Comments();
				comments.setId(rs.getInt("id"));
				comments.setUserid(rs.getString("userid"));
				comments.setNickname(rs.getString("nickname"));
				comments.setContents(rs.getString("contents"));
				commentsList.add(comments);
			}

		} catch (SQLException e1) {
			System.out.println(e1 + "查询失败");
		} finally {
			// 7 关闭链接
			DBGet.closeConnection(conn);
		}
		return commentsList;
	}

	public boolean delete(Comments comments) {
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
			String sql = "delete from comments where id=?";
//			rs = stmt.executeQuery(sql);
			ps = conn.prepareStatement(sql);
			ps.setInt(1, comments.getId());
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
	public boolean update(Comments comments) {
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
			String sql = "update user set userid=?,nickname=?,contents=? where id=?";			
//			n = stmt.executeUpdate(sql);
			ps.setString(1, comments.getUserid());
			ps.setString(2, comments.getNickname());
			ps.setString(3, comments.getContents());
			ps.setInt(4, comments.getId());
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

}

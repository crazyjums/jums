package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import connect.DBGet;
import entity.News;
import entity.Users;

public class UsersDao {
	public boolean insert(Users user) {
		boolean result = false;
		int n = 0;
		Connection conn = null;
//		Statement stmt = null;
		PreparedStatement ps = null;
		try {

			conn = DBGet.getConnection();
			// 4 鍒涘缓Statement瀵硅薄
//			stmt = conn.createStatement();

			// 5 鎵цsql璇彞
			String sql = "insert into user(userid,nickname,password) values(?,?,?)";			
//			n = stmt.executeUpdate(sql);
			ps = conn.prepareStatement(sql);
			ps.setString(1,user.getUserid());
			ps.setString(2, user.getNickname());
			ps.setString(3, user.getPassword());
			n = ps.executeUpdate();
		} catch (SQLException e1) {
			System.out.println(e1 + "鎻掑叆澶辫触");
		} finally {
			// 7 鍏抽棴閾炬帴
			DBGet.closeConnection(conn);
		}
		if (n > 0)
			result = true;
		return result;
	}

	public ArrayList<Users> getAll() {
		Users user = null;
		ArrayList<Users> userList = new ArrayList<Users>();

		Connection conn = null;
		ResultSet rs = null;
//		Statement stmt = null;
		PreparedStatement ps = null;
		try {

			conn = DBGet.getConnection();
			// 4 鍒涘缓Statement瀵硅薄
//			stmt = conn.createStatement();

			// 5 鎵цsql璇彞
			String sql = "SELECT * from user";
			ps=conn.prepareStatement(sql);
			ps.executeQuery();
//			rs = stmt.esxecuteQuery(sql);

			// 6 澶勭悊缁撴灉
			while (rs.next()) {
				user = new Users();
				user.setId(rs.getInt("id"));
				user.setNickname(rs.getString("nickname"));
				user.setUserid(rs.getString("userid"));
				user.setPassword(rs.getString("password"));

				userList.add(user);
			}

		} catch (SQLException e1) {
			System.out.println(e1 + "鏌ヨ澶辫触");
		} finally {
			// 7 鍏抽棴閾炬帴
			DBGet.closeConnection(conn);
		}
		return userList;
	}

	public boolean queryByNamePwd(Users user) {
		boolean result = false;
		Connection conn = null;
		ResultSet rs = null;
//		Statement stmt = null;
		PreparedStatement ps =null;
		try {

			conn = DBGet.getConnection();
			// 4 鍒涘缓Statement瀵硅薄
//			stmt = conn.createStatement();

			// 5 鎵цsql璇彞
			String sql = "select * from user where userid =? and password =?";
			

//			rs = stmt.executeQuery(sql);
			ps = conn.prepareStatement(sql);
			ps.setString(1, user.getUserid());
			ps.setString(2, user.getPassword());
			rs = ps.executeQuery();

			// 6 澶勭悊缁撴灉
			if (rs != null && rs.next())
				result = true;
		} catch (SQLException e1) {
			System.out.println(e1 + "鐧诲綍澶辫触");
		} finally {
			// 7 鍏抽棴閾炬帴
			DBGet.closeConnection(conn);
		}
		return result;
	}
	public String getNickname(Users user) {
		String nickname = null;
		Connection conn = null;
		ResultSet rs = null;
//		Statement stmt = null;
		PreparedStatement ps =null;
		try {

			conn = DBGet.getConnection();
			// 4 鍒涘缓Statement瀵硅薄
//			stmt = conn.createStatement();

			// 5 鎵цsql璇彞
			String sql = "select nickname from user where userid =? and password =?";
			

//			rs = stmt.executeQuery(sql);
			ps = conn.prepareStatement(sql);
			ps.setString(1, user.getUserid());
			ps.setString(2, user.getPassword());
			rs = ps.executeQuery();

			// 6 澶勭悊缁撴灉
			if (rs != null && rs.next()){
				nickname=rs.getString("nickname");
			}
		} catch (SQLException e1) {
			System.out.println(e1 + "鐧诲綍澶辫触");
		} finally {
			// 7 鍏抽棴閾炬帴
			DBGet.closeConnection(conn);
		}
		return nickname;
	}
	public boolean delete(int id) {
		boolean result = false;
		Connection conn = null;
		int n=0;
//		Statement stmt = null;
		PreparedStatement ps =null;
		try {

			conn = DBGet.getConnection();
			// 4 鍒涘缓Statement瀵硅薄
//			stmt = conn.createStatement();

			// 5 鎵цsql璇彞
			String sql = "delete from user where id=?";
//			rs = stmt.executeQuery(sql);
			ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			n = ps.executeUpdate();

			// 6 澶勭悊缁撴灉
			if (n>0)
				result = true;//鍒犻櫎鎴愬姛
		} catch (SQLException e1) {
			System.out.println(e1 + "鍒犻櫎澶辫触");
		} finally {
			// 7 鍏抽棴閾炬帴
			DBGet.closeConnection(conn);
		}
		return result;
	}
	public boolean update(Users user) {
		boolean result = false;
		Connection conn = null;
		int n=0;
//		Statement stmt = null;
		PreparedStatement ps =null;
		try {

			conn = DBGet.getConnection();
			// 4 鍒涘缓Statement瀵硅薄
//			stmt = conn.createStatement();

			// 5 鎵цsql璇彞
			String sql = "update user set userid=?,nickname=?,password=? where id=?";
//			rs = stmt.executeQuery(sql);
			ps = conn.prepareStatement(sql);
			ps.setString(1, user.getUserid());
			ps.setString(2, user.getNickname());
			ps.setString(3, user.getPassword());
			ps.setInt(4, user.getId());
			n = ps.executeUpdate();

			// 6 澶勭悊缁撴灉
			if (n>0)
				result = true;//鍒犻櫎鎴愬姛
		} catch (SQLException e1) {
			System.out.println(e1 + "update澶辫触");
		} finally {
			// 7 鍏抽棴閾炬帴
			DBGet.closeConnection(conn);
		}
		return result;
	}

}

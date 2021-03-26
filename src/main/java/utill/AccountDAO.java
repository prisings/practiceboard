package utill;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.AccountVO;

@Repository
public class AccountDAO {

	Connection cn = DBConnection.getConnection();
	Statement st;
	PreparedStatement pst;
	ResultSet rs;
	String sql;

	public AccountVO selectOne(AccountVO vo) {
		sql = "select * from account where id = ?";
		try {
			pst = cn.prepareStatement(sql);
			pst.setString(1, vo.getId());
			rs = pst.executeQuery();
			if (rs.next()) {
				vo.setPassword(rs.getString(2));
			} else {
				System.out.println("데이터를 찾을수 없음");
				vo = null;
			}
		} catch (Exception e) {
			e.printStackTrace();
			vo = null;
		}
		return vo;
	}// select one

	public int insert(AccountVO vo) {
		sql = "insert into account values(?,?,?,?,?,?,?)";
		try {
			pst = cn.prepareStatement(sql);
			pst.setString(1, vo.getId());
			pst.setString(2, vo.getPassword());
			pst.setString(3, vo.getName());
			pst.setString(4, vo.getBirthday());
			pst.setString(5, vo.getEmail());
			pst.setString(6, vo.getSex());
			pst.setString(7, vo.getAddress());
			return pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	public List<AccountVO> selectList() {
		
		sql = "select * from account";
		List<AccountVO> list =new ArrayList<AccountVO>();
		try {
			st = cn.createStatement();
			rs = st.executeQuery(sql);
			if (rs.next()) {
				do {
					AccountVO vo = new AccountVO();
					vo.setId(rs.getString(1));
					vo.setPassword(rs.getString(2));
					vo.setName(rs.getString(3));
					vo.setBirthday(rs.getString(4));
					vo.setEmail(rs.getString(5));
					vo.setSex(rs.getString(6));
					vo.setAddress(rs.getString(7));
					list.add(vo);
				} while(rs.next());
			}else {
				System.out.println("출력할 Data 가 없습니다 ~~");
				list=null;
			}
		} catch (Exception e) {
			e.printStackTrace();
			list = null;
		}
		
		return list;
	}

}

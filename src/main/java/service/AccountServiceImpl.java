package service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import utill.AccountDAO;
import vo.AccountVO;

@Service
public class AccountServiceImpl implements AccountService{

	@Autowired
	AccountDAO dao;
	
	@Override
	public AccountVO selectOne(AccountVO vo) {
		return dao.selectOne(vo);
	}

	@Override
	public int insert(AccountVO vo) {
		return dao.insert(vo);
	}

	@Override
	public List<AccountVO> selectList() {
		return dao.selectList();
	}

}

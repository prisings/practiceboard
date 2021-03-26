package service;

import java.util.List;

import vo.AccountVO;

public interface AccountService {

	public int insert(AccountVO vo);
		
	
	public List<AccountVO> selectList();
	public AccountVO selectOne(AccountVO vo);
	
	
}

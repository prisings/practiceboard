package service;

import vo.AccountVO;

public interface AccountService {

	public int insert(AccountVO vo);
		
	public AccountVO selectOne(AccountVO vo);
	
	
}

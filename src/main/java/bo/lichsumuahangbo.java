package bo;

import java.util.ArrayList;

import bean.lichsumuahangbean;
import dao.lichsumuahangdao;

public class lichsumuahangbo {
	lichsumuahangdao ls = new lichsumuahangdao();
	public ArrayList<lichsumuahangbean>  getlichsu(Long makh)
	{
		return ls.getlichsu(makh);
	}
}

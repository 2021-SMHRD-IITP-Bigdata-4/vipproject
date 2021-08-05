package Model;

public class BoardPage {

	private int totalCount;
	private int countList; 
	private int countPage; 
	private int nowPage;
	private int totalPage;
	private int	startPage;
	private int endPage;
	
	public BoardPage(int totalCount, int countList, int countPage, int nowPage) {
		this.totalCount = totalCount;
		this.countList = countList;
		this.countPage = countPage;
		this.nowPage = nowPage;
		this.totalPage = totalCount/countList;
	}
	
	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getCountList() {
		return countList;
	}

	public void setCountList(int countList) {
		this.countList = countList;
	}

	public int getCountPage() {
		return countPage;
	}

	public void setCountPage(int countPage) {
		this.countPage = countPage;
	}

	public int getNowPage() {
		return nowPage;
	}

	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public void pagingCount() {
		
		if(totalCount%countList > 0) {
			totalPage++;
		} 
		
		if(totalPage < nowPage) {
			nowPage = totalPage;
		} 
		
		startPage = ((nowPage -1)/countPage)* countPage + 1; 
		endPage = startPage + countPage -1;
		
		if(endPage>totalPage) {
			endPage = totalPage;
		} 
		
	}
	
	
	
}

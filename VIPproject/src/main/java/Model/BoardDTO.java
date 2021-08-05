package Model;

public class BoardDTO {

	private int post_num;
	private String user_id;
	private String display_name;
	private String post_sort;
	private String post_title;
	private String post_memo;
	private String post_photo;
	private String post_date;
	
	public BoardDTO(int post_num, String user_id, String display_name, String post_sort,
			String post_title, String post_memo, String post_photo, String post_date) {
		this.post_num = post_num;
		this.user_id = user_id;
		this.display_name = display_name;
		this.post_sort = post_sort;
		this.post_title = post_title;
		this.post_memo = post_memo;
		this.post_photo = post_photo;
		this.post_date = post_date;
	}
	
	public BoardDTO(String user_id, String display_name, String post_sort, String post_title, String post_memo,
			String post_photo) {
		this.user_id = user_id;
		this.display_name = display_name;
		this.post_sort = post_sort;
		this.post_title = post_title;
		this.post_memo = post_memo;
		this.post_photo = post_photo;
	}
	
	
	
	public BoardDTO(int post_num, String user_id, String display_name, String post_sort, String post_title,
			String post_memo, String post_photo) {
		
		this.post_num = post_num;
		this.user_id = user_id;
		this.display_name = display_name;
		this.post_sort = post_sort;
		this.post_title = post_title;
		this.post_memo = post_memo;
		this.post_photo = post_photo;
	}

	// getter, setter

	public int getPost_num() {
		return post_num;
	}

	public void setPost_num(int post_num) {
		this.post_num = post_num;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getDisplay_name() {
		return display_name;
	}

	public void setDisplay_name(String display_name) {
		this.display_name = display_name;
	}

	public String getPost_sort() {
		return post_sort;
	}

	public void setPost_sort(String post_sort) {
		this.post_sort = post_sort;
	}

	public String getPost_title() {
		return post_title;
	}

	public void setPost_title(String post_title) {
		this.post_title = post_title;
	}

	public String getPost_memo() {
		return post_memo;
	}

	public void setPost_memo(String post_memo) {
		this.post_memo = post_memo;
	}

	public String getPost_photo() {
		return post_photo;
	}

	public void setPost_photo(String post_photo) {
		this.post_photo = post_photo;
	}

	public String getPost_date() {
		return post_date;
	}

	public void setPost_date(String post_date) {
		this.post_date = post_date;
	}
	
	
	
}


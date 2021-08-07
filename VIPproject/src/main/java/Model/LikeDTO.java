package Model;

public class LikeDTO {
	
	private int post_like_num;
	private int post_num;
	private String user_id;
	private int like_check;
	private int hate_check;
	
	public LikeDTO(int post_like_num, int post_num, String user_id, int like_check, int hate_check) {
		this.post_like_num = post_like_num;
		this.post_num = post_num;
		this.user_id = user_id;
		this.like_check = like_check;
		this.hate_check = hate_check;
	}

	public LikeDTO(int post_num, String user_id, int like_check, int hate_check) {
		this.post_num = post_num;
		this.user_id = user_id;
		this.like_check = like_check;
		this.hate_check = hate_check;
	}

	public int getPost_like_num() {
		return post_like_num;
	}

	public void setPost_like_num(int post_like_num) {
		this.post_like_num = post_like_num;
	}

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

	public int getLike_check() {
		return like_check;
	}

	public void setLike_check(int like_check) {
		this.like_check = like_check;
	}

	public int getHate_check() {
		return hate_check;
	}

	public void setHate_check(int hate_check) {
		this.hate_check = hate_check;
	}
	
	
	
	
	
}

package Model;

public class CommentDTO {
	
	private int post_reply_num;
	private int post_num;
	private String user_id;
	private String display_name;
	private String reply_memo;
	private String reply_date;
	
	public CommentDTO(int post_reply_num, int post_num, String user_id, String display_name, String reply_memo,
			String reply_date) {
		this.post_reply_num = post_reply_num;
		this.post_num = post_num;
		this.user_id = user_id;
		this.display_name = display_name;
		this.reply_memo = reply_memo;
		this.reply_date = reply_date;
	}

	public CommentDTO(int post_num, String user_id, String display_name, String reply_memo) {
		this.post_num = post_num;
		this.user_id = user_id;
		this.display_name = display_name;
		this.reply_memo = reply_memo;
	}

	public int getPost_reply_num() {
		return post_reply_num;
	}

	public void setPost_reply_num(int post_reply_num) {
		this.post_reply_num = post_reply_num;
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

	public String getDisplay_name() {
		return display_name;
	}

	public void setDisplay_name(String display_name) {
		this.display_name = display_name;
	}

	public String getReply_memo() {
		return reply_memo;
	}

	public void setReply_memo(String reply_memo) {
		this.reply_memo = reply_memo;
	}

	public String getReply_date() {
		return reply_date;
	}

	public void setReply_date(String reply_date) {
		this.reply_date = reply_date;
	}
	
	
	
	
	
}

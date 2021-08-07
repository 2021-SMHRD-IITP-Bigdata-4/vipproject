package Model;

public class CalenderDTO {

	private int sca_num;
	private int dog_num;
	private String user_id;
	private String sca_pdate;
	private String sca_title;
	private String sca_content;
	private String dog_name;
	
	public CalenderDTO(int sca_num, int dog_num, String user_id, String sca_pdate, String sca_title, String sca_content,
			String dog_name) {
		this.sca_num = sca_num;
		this.dog_num = dog_num;
		this.user_id = user_id;
		this.sca_pdate = sca_pdate;
		this.sca_title = sca_title;
		this.sca_content = sca_content;
		this.dog_name = dog_name;
		
	}
	public int getSca_num() {
		return sca_num;
	}
	public void setSca_num(int sca_num) {
		this.sca_num = sca_num;
	}
	public int getDog_num() {
		return dog_num;
	}
	public void setDog_num(int dog_num) {
		this.dog_num = dog_num;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getSca_pdate() {
		return sca_pdate;
	}
	public void setSca_pdate(String sca_pdate) {
		this.sca_pdate = sca_pdate;
	}
	public String getSca_title() {
		return sca_title;
	}
	public void setSca_title(String sca_title) {
		this.sca_title = sca_title;
	}
	public String getSca_content() {
		return sca_content;
	}
	public void setSca_content(String sca_content) {
		this.sca_content = sca_content;
	}
	public String getDog_name() {
		return dog_name;
	}
	public void setDog_name(String dog_name) {
		this.dog_name = dog_name;
	}
	
	
}

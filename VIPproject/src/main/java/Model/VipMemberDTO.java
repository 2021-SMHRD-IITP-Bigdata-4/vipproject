package Model;

public class VipMemberDTO {
	
	private String user_id;
	private String display_name;
	private String user_name;
	private String user_pw;
	private String user_phone;
	private String user_address;
	private String have_dog;
	private int cal_num;
	
	public VipMemberDTO(String user_id, String display_name, String user_name, String user_pw, String user_phone,
			String user_address, String have_dog, int cal_num) {
		this.user_id = user_id;
		this.display_name = display_name;
		this.user_name = user_name;
		this.user_pw = user_pw;
		this.user_phone = user_phone;
		this.user_address = user_address;
		this.have_dog = have_dog;
		this.cal_num = cal_num;
	}

	public VipMemberDTO(String user_id, String display_name, String user_name, String user_pw, String user_phone,
			String user_address, String have_dog) {
		this.user_id = user_id;
		this.display_name = display_name;
		this.user_name = user_name;
		this.user_pw = user_pw;
		this.user_phone = user_phone;
		this.user_address = user_address;
		this.have_dog = have_dog;
	}
	

	public VipMemberDTO(String user_id, String user_pw) {
		this.user_id = user_id;
		this.user_pw = user_pw;
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

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public String getUser_phone() {
		return user_phone;
	}

	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}

	public String getUser_address() {
		return user_address;
	}

	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}

	public String getHave_dog() {
		return have_dog;
	}

	public void setHave_dog(String have_dog) {
		this.have_dog = have_dog;
	}

	public int getCal_num() {
		return cal_num;
	}

	public void setCal_num(int cal_num) {
		this.cal_num = cal_num;
	}
	
	
}
	
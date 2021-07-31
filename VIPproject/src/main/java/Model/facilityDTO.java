package Model;

public class facilityDTO {
	
	 private int fac_num;
	 private String fac_name;
	 private String fac_address;
	 private double fac_lati;
	 private double fac_long;
	 private String fac_sort;
	 private String fac_intro;
	
	public facilityDTO(int fac_num, String fac_name, String fac_address, double fac_lati, double fac_long,
			String fac_sort, String fac_intro) {
		super();
		this.fac_num = fac_num;
		this.fac_name = fac_name;
		this.fac_address = fac_address;
		this.fac_lati = fac_lati;
		this.fac_long = fac_long;
		this.fac_sort = fac_sort;
		this.fac_intro = fac_intro;
	}
	
	public facilityDTO( String fac_name, String fac_address, double fac_lati, double fac_long, String fac_intro) {
		super();
		this.fac_name = fac_name;
		this.fac_address = fac_address;
		this.fac_lati = fac_lati;
		this.fac_long = fac_long;
		this.fac_intro = fac_intro;
	}
	
	public int getFac_num() {
		return fac_num;
	}

	public void setFac_num(int fac_num) {
		this.fac_num = fac_num;
	}

	public String getFac_name() {
		return fac_name;
	}

	public void setFac_name(String fac_name) {
		this.fac_name = fac_name;
	}

	public String getFac_address() {
		return fac_address;
	}

	public void setFac_address(String fac_address) {
		this.fac_address = fac_address;
	}

	public double getFac_lati() {
		return fac_lati;
	}

	public void setFac_lati(double fac_lati) {
		this.fac_lati = fac_lati;
	}

	public double getFac_long() {
		return fac_long;
	}

	public void setFac_long(double fac_long) {
		this.fac_long = fac_long;
	}

	public String getFac_sort() {
		return fac_sort;
	}

	public void setFac_sort(String fac_sort) {
		this.fac_sort = fac_sort;
	}

	public String getFac_intro() {
		return fac_intro;
	}

	public void setFac_intro(String fac_intro) {
		this.fac_intro = fac_intro;
	}

	
	
	
	
	
	
	
	

}

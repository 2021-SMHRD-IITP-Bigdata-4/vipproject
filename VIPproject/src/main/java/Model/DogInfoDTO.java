package Model;

public class DogInfoDTO {
	
	
	String t_type;
	String t_origin;
	String t_personality;
	String t_size;
	String t_weight;
	String t_disease;
	String t_resistance;
	String t_workout;
	String t_photo;

	public DogInfoDTO(String t_type, String t_origin, String t_personality, String t_size, String t_weight,
			String t_disease, String t_resistance, String t_workout, String t_photo) {
		this.t_type = t_type;
		this.t_origin = t_origin;
		this.t_personality = t_personality;
		this.t_size = t_size;
		this.t_weight = t_weight;
		this.t_disease = t_disease;
		this.t_resistance = t_resistance;
		this.t_workout = t_workout;
		this.t_photo = t_photo;
	}
	
	/* �� ����� �����ִ� ���������� ��ϸ� �̾��ִ� DTO �������̵� ? ���� */
	public DogInfoDTO(String t_type) {
		this.t_type = t_type;
	}

	/* getter */
	/* ������ Ư���� ���� �����ֱ⸸ �Ҳ��� ���͸� ����� ���ʹ� �ȸ��� */
	public String getT_type() {
		return t_type;
	}

	public String getT_origin() {
		return t_origin;
	}

	public String getT_personality() {
		return t_personality;
	}

	public String getT_size() {
		return t_size;
	}

	public String getT_weight() {
		return t_weight;
	}

	public String getT_disease() {
		return t_disease;
	}

	public String getT_resistance() {
		return t_resistance;
	}

	public String getT_workout() {
		return t_workout;
	}

	public String getT_photo() {
		return t_photo;
	}
	
	


}

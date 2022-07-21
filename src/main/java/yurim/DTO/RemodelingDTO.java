package yurim.DTO;

public class RemodelingDTO {
	private int num;
	private String project; // 아파트명
	private String py; // 평수
	private String period; // 작업일수

	public RemodelingDTO() {
		super();
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getProject() {
		return project;
	}

	public void setProject(String project) {
		this.project = project;
	}

	public String getPy() {
		return py;
	}

	public void setPy(String py) {
		this.py = py;
	}

	public String getPeriod() {
		return period;
	}

	public void setPeriod(String period) {
		this.period = period;
	}

}

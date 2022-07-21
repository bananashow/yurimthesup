package yurim.service;

public interface FileService {

	public void fileInsert(String filename, String filepath, int detailImageCount);
	
	//newInterior num에 해당하는 이미지파일의 개수를 가져옴
	public String newInteriorimageCount(int num);
	
	//remodeling num에 해당하는 이미지파일의 개수를 가져옴
	public String remodelingCount(int num);

}

package yurim.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import yurim.DTO.AdminDTO;
import yurim.DTO.ContactDTO;
import yurim.DTO.NewInteriorDTO;
import yurim.DTO.RemodelingDTO;
import yurim.service.AdminService;
import yurim.service.ContactService;
import yurim.service.FileService;
import yurim.service.NewInteriorService;
import yurim.service.RemodelingService;

@Controller
@RequestMapping("/*.do")
public class YurimController {
	
	@Autowired
	NewInteriorService nService;
	
	@Autowired
	RemodelingService rService;
	
	@Autowired
	AdminService adminService;
	
	@Autowired
	ContactService cService;
	
	@Autowired
	FileService fService;
	
	
	//메인 화면
	@RequestMapping("/index.do")
	public String indexGo() {
		return "index";
	}
	
	@RequestMapping("/mainGo.do")
	public String mainGo(Model model) {
		ArrayList<NewInteriorDTO> nList = nService.newInteriorList();
		model.addAttribute("nList", nList);
		ArrayList<RemodelingDTO> rList = rService.remodelingList();
		model.addAttribute("rList", rList);
		return "main";
	}
	
	@RequestMapping("/contact.do")
	public String contact() {
		return "contact";
	}

	//문의글 작성받음
	@RequestMapping("/contactResult.do")
	public String contactResult(@RequestParam("address") String address, @RequestParam("py") String py, @RequestParam("name") String name, @RequestParam("tel") String tel, @RequestParam("hopebudget") String hopebudget, @RequestParam("comment") String comment) {
	cService.contactInsert(address, py, name, tel, hopebudget, comment);
	return "contactResult";
	}
	
	//about : 회사소개 페이지
	@RequestMapping("/about.do")
	public String about() {
		return "about";
	}
	
	//신축 인테리어 페이지
	@RequestMapping("/newInterior.do")
	public String newInterior(Model model) {
		ArrayList<NewInteriorDTO> nList = nService.newInteriorList();
		model.addAttribute("nList", nList);
		return "newInterior";
	}
	
	//리모델링 페이지
	@RequestMapping("/remodeling.do")
	public String remodeling(Model model) {
		ArrayList<RemodelingDTO> rList = rService.remodelingList();
		model.addAttribute("rList", rList);
		return "remodeling";
	}
	
	//신축 인테리어 자세히보기
	@RequestMapping("/newInteriorView.do")
	public String newInteriorView(@RequestParam("num") int num, Model model) {
		NewInteriorDTO newinteriorSelect = nService.newInteriorSelect(num);
		String newInteriorCount = fService.newInteriorimageCount(num);
		model.addAttribute("newInteriorCount", newInteriorCount);
		model.addAttribute("newinteriorSelect", newinteriorSelect);
		return "newInteriorView";
	}
	
	//리모델링 자세히보기
	@RequestMapping("/RemodelingView.do")
	public String RemodelingView(@RequestParam("num") int num, Model model) {
		RemodelingDTO remodelingSelect = rService.remodelingSelect(num);
		String remodelingCount = fService.remodelingCount(num);
		model.addAttribute("remodelingCount", remodelingCount);
		model.addAttribute("remodelingSelect", remodelingSelect);
		return "RemodelingView";
	}
	
	//부분디자인 페이지
	@RequestMapping("/partDesign.do")
	public String partDesign() {
		return "partDesign";
	}
	
	//현장이야기
	@RequestMapping("/story.do")
	public String storyGo() {
		return "story";
	}
	
	
	
	
	//------------------------------관리자--------------------------------
	
	//관리자 페이지!
	@RequestMapping("/login.do")
	public String login() {
		return "login";
	}
	
	@RequestMapping("/login_process.do")
	public String admin(@RequestParam("id") String id, @RequestParam("pw") String pw, Model model) {
		AdminDTO loginResult = adminService.loginCheck();
		model.addAttribute("loginResult", loginResult);
		return "login_process";
	}
	
	//관리자 로그아웃
	@RequestMapping("/logout.do")
	public String logout() {
		return "logout";
	}
	
	@RequestMapping("/admin.do")
	public String adminPage() {
		return "admin";
	}
	

	//관리자 문의글 관리
	@RequestMapping("/admin_contact.do")
	public String adminContact(Model model, @RequestParam(value = "nowPage", required = false) String nowPage) {
		model.addAttribute("nowPage", nowPage);
		
		int cCount = cService.countContact();
		model.addAttribute("cCount", cCount);
		return "admin_contactProcess";
	}
	
	@RequestMapping("/admin_contactProcess.do")
	public String contactProcess(Model model, @RequestParam("limitStart") int limitStart, @RequestParam("totalPage") int totalPage) {
		ArrayList<ContactDTO> cList = cService.contactList(limitStart);
		model.addAttribute("cList", cList);
		model.addAttribute("totalPage", totalPage);
		return "admin_contact";
	}
	

	@RequestMapping("/check_ok.do")
	public String checkOk(@RequestParam("num") int num) {
		cService.checkOk(num);
		return "admin_checkOk";
	}
	
	@RequestMapping("/delete_ok.do")
	public String deleteOk(@RequestParam("num") int num) {
		cService.deleteOk(num);
		return "admin_checkOk";
	}
	
	@RequestMapping("/admin_contactDetail.do")
	public String contactDetail(@RequestParam("num") int num, Model model) {
		ContactDTO cList = cService.contactAllList(num);
		model.addAttribute("cList", cList);
		return "admin_contactDetail";
	}
	
	
	
	//신축인테리어 관리 리스트
	@RequestMapping("/admin_newInterior.do")
	public String newInteriorPage(Model model) {
		ArrayList<NewInteriorDTO> nList = nService.newInteriorList();
		model.addAttribute("nList", nList);
		return "admin_newInterior";
	}
	
	@RequestMapping("/admin_newInteriorModify.do")
	public String newInteriorModify(@RequestParam("num") int num, Model model) {
		NewInteriorDTO newinteriorSelect = nService.newInteriorSelect(num);
		model.addAttribute("newinteriorSelect", newinteriorSelect);
		return "admin_newInteriorModify";
	}
	
	//신축인테리어 글 수정처리
	@RequestMapping("/admin_newInteriorModifyOk.do")
	public String newInteriorModifyOk(@RequestParam("num") int num, @RequestParam("project") String project, @RequestParam("py") String py, @RequestParam("period") String period) {
		nService.newInteriorUpdate(num, project, py, period);
		return "admin_newInteriorModifyOk";
	}
	
	//신축인테리어 글 삭제처리
	@RequestMapping("/admin_newInteriorDeleteOk.do")
	public String newInteriorDeleteOk(@RequestParam("num") int num) {
		return "admin_newInteriorDeleteOk";
	}
	
	//신축인테리어 글 추가페이지
	@RequestMapping("/admin_newInteriorAdd.do")
	public String newInteriorAdd() {
		return "admin_newInteriorAdd";
	}
	
	//신축인테리어 글 추가처리
	@RequestMapping("/admin_newInteriorAddOk.do")
	public String newInteriorAddOk(@RequestPart(value="mainFile") MultipartFile mainFile, @RequestPart(value="detailFile") List<MultipartFile> detailFile, @RequestParam("project") String project, @RequestParam("py") String py, @RequestParam("period") String period) throws Exception {
		nService.newInteriorAdd(project, py, period);
		
		int useIndex = nService.maxNum();
		//메인 이미지파일 처리
		String projectPath = System.getProperty("user.dir") + "\\src\\main\\resources\\static\\image\\newInteriorImage";
		String fileName = "newInterior" + useIndex + ".jpg";
		File saveFile = new File(projectPath, fileName);
		mainFile.transferTo(saveFile);
		
		//상세 이미지파일 처리
		int detailImageNum = 0;
		for (MultipartFile file : detailFile) {
			String projectPath2 = System.getProperty("user.dir") + "\\src\\main\\resources\\static\\image\\newInteriorImage\\newInteriorDetail";
			String fileName2 = "newInteriorDetail" + useIndex + "_" + detailImageNum + ".jpg";
			File saveFile2 = new File(projectPath2, fileName2);
			file.transferTo(saveFile2);
			
			fService.fileInsert(fileName2, projectPath, detailImageNum);
			
			detailImageNum++;
		}
		return "admin_newInteriorAddOk";
	}
	
	//신축인테리어 글 삭제처리
	@RequestMapping("/admin_newInteriorDelete.do")
	public String newInteriorDelete(@RequestParam("num") int num) {
		nService.newInteriorDel(num);
		
		for(int i=0; i <= 10; i++) {
			String deleteFilePath = System.getProperty("user.dir") + "\\src\\main\\resources\\static\\image\\newInteriorImage\\newInteriorDetail";
			String deleteFileName = "newInteriorDetail" + num + "_" + i + ".jpg";
			File deleteFile = new File(deleteFilePath, deleteFileName);
			deleteFile.delete();
			
			String deleteFilePath2 = System.getProperty("user.dir") + "\\src\\main\\resources\\static\\image\\newInteriorImage";
			String deleteFileName2 = "newInterior" + num + ".jpg";
			File deleteFile2 = new File(deleteFilePath2, deleteFileName2);
			deleteFile2.delete();
		}
		
		return "admin_newInteriorAddOk";
	}
	
	//리모델링 관리 리스트
	@RequestMapping("/admin_remodeling.do")
	public String remodelingPage(Model model) {
		ArrayList<RemodelingDTO> rList = rService.remodelingList();
		model.addAttribute("rList", rList);
		return "admin_remodeling";
	}
	
	//리모델링 글 추가페이지
	@RequestMapping("/admin_remodelingAdd.do")
	public String remodelingAdd() {
		return "admin_remodelingAdd";
	}
	

	//리모델링 글 추가처리
	@RequestMapping("/admin_remodelingAddOk.do")
	public String remodelingAddOk(@RequestPart(value="mainFile") MultipartFile mainFile, @RequestPart(value="detailFile") List<MultipartFile> detailFile, @RequestParam("project") String project, @RequestParam("py") String py, @RequestParam("period") String period) throws Exception {
		rService.remodelingAdd(project, py, period);
		
		int useIndex = rService.maxNum();
		//메인 이미지파일 처리
		String projectPath = System.getProperty("user.dir") + "\\src\\main\\resources\\static\\image\\remodelingImage";
		String fileName = "remodeling" + useIndex + ".jpg";
		File saveFile = new File(projectPath, fileName);
		mainFile.transferTo(saveFile);
		
		//상세 이미지파일 처리
		int detailImageNum = 0;
		for (MultipartFile file : detailFile) {
			String projectPath2 = System.getProperty("user.dir") + "\\src\\main\\resources\\static\\image\\remodelingImage\\remodelingDetail";
			String fileName2 = "remodelingDetail" + useIndex + "_" + detailImageNum + ".jpg";
			File saveFile2 = new File(projectPath2, fileName2);
			file.transferTo(saveFile2);
			
			fService.fileInsert(fileName2, projectPath, detailImageNum);
			
			detailImageNum++;
		}		
		return "admin_remodelingAddOk";
	}
	

	@RequestMapping("/admin_remodelingModify.do")
	public String remodelingModify(@RequestParam("num") int num, Model model) {
		RemodelingDTO remodelingSelect = rService.remodelingSelect(num);
		model.addAttribute("remodelingSelect", remodelingSelect);
		return "admin_remodelingModify";
	}
	
	//리모델링 글 수정처리
	@RequestMapping("/admin_remodelingModifyOk.do")
	public String remodelingModifyOk(@RequestParam("num") int num, @RequestParam("project") String project, @RequestParam("py") String py, @RequestParam("period") String period) {
		rService.remodelingUpdate(num, project, py, period);
		return "admin_remodelingModifyOk";
	}
	
	//리모델링 글 삭제처리
	@RequestMapping("/admin_remodelingDelete.do")
	public String remodelingDelete(@RequestParam("num") int num) {
		rService.remodelingDel(num);
		
		for(int i=0; i <= 10; i++) {
			String deleteFilePath = System.getProperty("user.dir") + "\\src\\main\\resources\\static\\image\\remodelingImage\\remodelingDetail";
			String deleteFileName = "remodelingDetail" + num + "_" + i + ".jpg";
			File deleteFile = new File(deleteFilePath, deleteFileName);
			deleteFile.delete();
			
			String deleteFilePath2 = System.getProperty("user.dir") + "\\src\\main\\resources\\static\\image\\remodelingImage";
			String deleteFileName2 = "remodeling" + num + ".jpg";
			File deleteFile2 = new File(deleteFilePath2, deleteFileName2);
			deleteFile2.delete();
		}
		return "admin_remodelingAddOk";
	}
}

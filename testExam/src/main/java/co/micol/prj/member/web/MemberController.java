package co.micol.prj.member.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import co.micol.prj.member.service.MemberService;
import co.micol.prj.member.service.MemberVO;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberDao;

	@RequestMapping("memberList.do")
	public String memberList(Model model) {
		model.addAttribute("members", memberDao.memberSelectList());
		return "member/memberList";
	}

	@PostMapping("/memberSelect.do")
	public String memberSelect(Model model, MemberVO vo) {
		vo = memberDao.memberSelect(vo);
		if (vo != null) {
			model.addAttribute("member", vo);
			return "member/memberSelect";
		} else {
			model.addAttribute("message", "조회된 회원이 없습니다.");
			return "member/memberError";
		}
	}
	@RequestMapping("memberInsertForm.do")
	public String memberInsertForm() {
		return "member/memberInsertForm";
	}
	
	@PostMapping("/memberInsert.do")
	public String memberRegister(MemberVO vo) {
		int n = memberDao.memberInsert(vo);
		
		if(n != 0) {
			return "redirect:home.do";
		}
			return "member/memberError";
	}

	@RequestMapping("memberDelete.do")
	public String memberDelete(MemberVO vo) {
		int n = memberDao.memberDelete(vo);
		if (n != 0) {
			return "redirect:memberList.do";
		}
		return "member/memberError";
	}
	
	@RequestMapping("/memberUpdateForm.do")
	public String memberUpdateForm(MemberVO vo , Model model) {
		vo = memberDao.memberSelect(vo);
		model.addAttribute("member", vo);		
		return "member/memberUpdateForm";
	}
	
	@RequestMapping("/memberUpdate.do")
	public String memberUpdate(MemberVO vo) {
		int n = memberDao.memberUpdate(vo);
		
		if(n != 0) {
			return "redirect:memberList.do";
		}
			return "member/memberError";
	}
}

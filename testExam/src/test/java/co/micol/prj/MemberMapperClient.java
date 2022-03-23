package co.micol.prj;

import java.util.List;

import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import co.micol.prj.member.mapper.MemberMapper;
import co.micol.prj.member.service.MemberVO;

	@RunWith(SpringJUnit4ClassRunner.class)
	@ContextConfiguration("classpath:/config/*-context.xml")
	public class MemberMapperClient {
		
		@Autowired MemberMapper mapper;
		//@Test
		public void listTest() {
			List<MemberVO> list =  mapper.memberSelectList();
			System.out.println(list);
		}
		
		//@Test
		public void insertTest() {
			MemberVO vo = new MemberVO();
			vo.setId("2");
			vo.setName("dsahong");
			vo.setPassword("1234");
			/*
			 * vo.setAddress(null); vo.setAuthor(null); vo.setPicture(null);
			 * vo.setRpicture(null); vo.setTel(null);
			 */
			
			int Itest = mapper.memberInsert(vo);
			System.out.println(Itest);
		}
		
		
}
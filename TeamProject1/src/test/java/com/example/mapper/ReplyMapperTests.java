package com.example.mapper;

import java.util.List;
import java.util.stream.IntStream;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.example.domain.Criteria;
import com.example.domain.ReplyVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringRunner.class)
//@ContextConriguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
//Java Config
@ContextConfiguration(classes= {com.example.config.RootConfig.class})
@Log4j
public class ReplyMapperTests {
	
	//테스트 전에 해당 번호의 게시물이 존재하는지 반드시 확인할 것
	private Long[] bnoArr = {71L,72L,63L,64L,77L};
	
	@Setter(onMethod_=@Autowired)
	private ReplyMapper mapper;
	
//	@Test
	public void testCreate() {
		
		IntStream.rangeClosed(1, 10).forEach(i -> {
			ReplyVO vo = new ReplyVO();
			
			//게시물의 번호
			vo.setBno(bnoArr[i%5]);
			vo.setReply("댓글 테스트 "+i);
			vo.setReplyer("replyer"+i);
			
			mapper.insert(vo);
		});
	}
//	@Test
	public void testRead() {
		
		Long targetRno=4L;
		
		ReplyVO vo = mapper.read(targetRno);
		
		log.info(vo);
	}
	
//	@Test
	public void testMapper() {
		log.info(mapper);
	}
	
//	@Test
	public void testDelete() {
		Long targetRno = 12L;
	
		mapper.delete(targetRno);
	}
	
	@Test
	public void testUpdate() {
		
//		Long targetRno = 14L;		
//		ReplyVO vo = mapper.read(targetRno);
		
		ReplyVO vo = new ReplyVO();
		vo.setRno(14L);
		vo.setBno(272L);
		vo.setReply("ㅋㅋ");
		vo.setReplyer("홍길동");
		
		int count = mapper.update(vo);
		
		log.info("UPDATE COUNT: "+ count);
		
	}
	
//	@Test
	public void testList() {
		
		Criteria cri = new Criteria();
		
		//7L
		List<ReplyVO> replies = mapper.getListWithPaging(cri, bnoArr[0]);
		
		replies.forEach(reply -> log.info(reply));
	}
	
	@Test
	public void testList2() {
			
		Criteria cri = new Criteria(2,10);
		
		//7L
		List<ReplyVO> replies = mapper.getListWithPaging(cri, 219L);
		
		replies.forEach(reply -> log.info(reply));
	}

}


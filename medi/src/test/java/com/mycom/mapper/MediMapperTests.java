package com.mycom.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.mycom.domain.DoctorVO;
import com.mycom.domain.HistoryVO;
import com.mycom.domain.PatientVO;
import com.mycom.domain.tempvo;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MediMapperTests {

	@Setter(onMethod_ = @Autowired)
	private MediMapper mapper;
	
	@Test
	public void testGetList() {
		mapper.getDlist().forEach(m -> log.info(m));
	}
	@Test
	public void testinsert() {
//		PatientVO t = new PatientVO();
		DoctorVO t = new DoctorVO();
//		t.setAge(10);
//		t.setHeight(150);
		t.setDocid("asdf");
//		t.setMcheck("uncheck");
		t.setDocname("hong");
		t.setDocpw("asdf");
//		t.setRash("uncheck");
//		t.setSex("male");
//		t.setTemper(36.3);
//		t.setWeight(60);
		mapper.insertd(t);
	}
	
	@Test
	public void testdel() {
		tempvo t = new tempvo();
		t.setPid("asdf");
		t.setPwd("asdf");
		log.info("result is~~~~~~ "+mapper.deleted(t));
	}
	
	@Test
	public void testupd() {
		PatientVO p = new PatientVO();
		p.setPatid("asdf");
		p.setAge(1);
		p.setWeight(20);
		p.setHeight(30);
		p.setRash("no");
		p.setMcheck("no");
		p.setSex("no");
		p.setPatpw("s");
		p.setPatname("as");
		p.setTemper(20);
		DoctorVO d = new DoctorVO();
		d.setDocid("asdf");
		d.setDocname("qqq");
		d.setDocpw("zzz");
		log.info("result is~~~~~~~~~~~"+mapper.modd(d));
	}
	
	@Test
	public void testRead() {
		tempvo t = new tempvo();
		t.setPid("asdf");
		t.setPwd("zzz");
		log.info(mapper.getd(t));
	}
	@Test
	public void testinh() {
		HistoryVO v = new HistoryVO();
		v.setDocid("asdf");
		v.setPatid("a");
		v.setHistory("qq");
		mapper.inserth(v);
	}
	@Test
	public void testmodh() {
		HistoryVO v = new HistoryVO();
		v.setDocid("asdf");
		v.setPatid("a");
		v.setHistory("zzz");
		v.setHno(1L);
		mapper.modh(v);
	}
	@Test
	public void testgeth() {
		mapper.geth(1L);
	}
	@Test
	public void testdelh() {
		mapper.deleteh(1L);
	}
}

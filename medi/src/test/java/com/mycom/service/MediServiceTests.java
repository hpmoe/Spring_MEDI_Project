package com.mycom.service;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.mycom.domain.PatientVO;
import com.mycom.domain.tempvo;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MediServiceTests {

	@Setter(onMethod_ = {@Autowired})
	private MediService service;
	
	@Test
	public void testEx() {
		log.info(service);
		log.info("alkjsdlkfjlasdjflkahsdkjfhajksdhf");
		assertNotNull(service);
	}
	@Test
	public void testgl() {
		log.info(service.getListP());
	}
	@Test
	public void testReg() {
		PatientVO t = new PatientVO();
		t.setAge(10);
		t.setHeight(150);
		t.setPatid("asdf");
		t.setMcheck("uncheck");
		t.setPatname("hong");
		t.setPatpw("asdf");
		t.setRash("uncheck");
		t.setSex("male");
		t.setTemper(36.3);
		t.setWeight(60);
		service.registerP(t);
		log.info("id ++++++++++++++++"+t.getPatid());
	}
	
	@Test
	public void testr() {
		tempvo t = new tempvo();
		t.setPid("asdf");
		t.setPwd("s");
		log.info(service.getP(t));
	}
	
	@Test
	public void testm() {
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
		log.info("dddddddddddddd"+service.modifyP(p));
	}
	@Test
	public void testrem() {
		tempvo t = new tempvo();
		t.setPid("asdf");
		t.setPwd("s");
		log.info("xxxxxxxxxxxxx"+service.removeP(t));
	}
}

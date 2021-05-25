package com.mycom.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycom.domain.DoctorVO;
import com.mycom.domain.HistoryVO;
import com.mycom.domain.PatientVO;
import com.mycom.domain.tempvo;
import com.mycom.mapper.MediMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class MediServiceImpl implements MediService{

	@Setter(onMethod_ = @Autowired)
	private MediMapper mapper;


	@Override
	public void registerP(PatientVO patient) {
		mapper.insertp(patient);
	}

	@Override
	public PatientVO getP(tempvo temp) {
		return mapper.getp(temp);
	}

	@Override
	public boolean modifyP(PatientVO patient) {
		return mapper.modp(patient) ==1;
	}

	@Override
	public boolean removeP(tempvo temp) {
		return mapper.deletep(temp)==1;
	}

	@Override
	public List<PatientVO> getListP() {
		return mapper.getPlist();
	}

	@Override
	public void registerD(DoctorVO doc) {
		// TODO Auto-generated method stub
		mapper.insertd(doc);
	}

	@Override
	public DoctorVO getD(tempvo temp) {
		// TODO Auto-generated method stub
		return mapper.getd(temp);
	}

	@Override
	public boolean modifyD(DoctorVO doc) {
		// TODO Auto-generated method stub
		return mapper.modd(doc)==1;
	}

	@Override
	public boolean removeD(tempvo temp) {
		// TODO Auto-generated method stub
		return mapper.deleted(temp)==1;
	}

	@Override
	public List<DoctorVO> getListD() {
		// TODO Auto-generated method stub
		return mapper.getDlist();
	}

	@Override
	public void registerH(HistoryVO hvo) {
		// TODO Auto-generated method stub
		mapper.inserth(hvo);
	}

	@Override
	public boolean modifyH(HistoryVO hvo) {
		// TODO Auto-generated method stub
		return mapper.modh(hvo)==1;
	}

	@Override
	public boolean removeH(Long hno) {
		// TODO Auto-generated method stub
		return mapper.deleteh(hno)==1;
	}

	@Override
	public HistoryVO getH(Long hno) {
		// TODO Auto-generated method stub
		return mapper.geth(hno);
	}

}

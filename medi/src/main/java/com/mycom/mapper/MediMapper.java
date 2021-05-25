package com.mycom.mapper;

import java.util.List;

import com.mycom.domain.DoctorVO;
import com.mycom.domain.HistoryVO;
import com.mycom.domain.PatientVO;
import com.mycom.domain.tempvo;

public interface MediMapper {
//	patient
	public List<PatientVO> getPlist();
	public void insertp(PatientVO patient);
	public int deletep(tempvo temp);
	public int modp(PatientVO patient);
	public PatientVO getp(tempvo temp);
	
//	doctor
	public List<DoctorVO> getDlist();
	public void insertd(DoctorVO doc);
	public int deleted(tempvo temp);
	public int modd(DoctorVO doc);
	public DoctorVO getd(tempvo temp);
	
	//history
	public void inserth(HistoryVO hvo);
	public int modh(HistoryVO hvo);
	public int deleteh(Long hno);
	public HistoryVO geth(Long hno);
}

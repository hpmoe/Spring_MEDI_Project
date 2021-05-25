package com.mycom.service;

import java.util.List;

import com.mycom.domain.DoctorVO;
import com.mycom.domain.HistoryVO;
import com.mycom.domain.PatientVO;
import com.mycom.domain.tempvo;

public interface MediService {
	//ppppppppppppppppppppppp
	public void registerP(PatientVO patient);
	public PatientVO getP(tempvo temp);
	public boolean modifyP(PatientVO patient);
	public boolean removeP(tempvo temp);
	public List<PatientVO> getListP();
	
	public void registerD(DoctorVO doc);
	public DoctorVO getD(tempvo temp);
	public boolean modifyD(DoctorVO doc);
	public boolean removeD(tempvo temp);
	public List<DoctorVO> getListD();
	
	public void registerH(HistoryVO hvo);
	public boolean modifyH(HistoryVO hvo);
	public boolean removeH(Long hno);
	public HistoryVO getH(Long hno);
	
}

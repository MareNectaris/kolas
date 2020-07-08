// ECO_NOTICE_LIB_CODE.cpp : implementation file
//

#include "stdafx.h"
#include "ECO_NOTICE_LIB_CODE.h"
#include "..\..\�������\check_dup_api\RS_SQL.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CECO_NOTICE_LIB_CODE dialog


CECO_NOTICE_LIB_CODE::CECO_NOTICE_LIB_CODE(CESL_Mgr* pParent /*=NULL*/)
	: CESL_Mgr(IDD, pParent)
{
	//{{AFX_DATA_INIT(CECO_NOTICE_LIB_CODE)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
	m_pGrid = NULL;
}


VOID CECO_NOTICE_LIB_CODE::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CECO_NOTICE_LIB_CODE)
		// NOTE: the ClassWizard will add DDX and DDV calls here
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CECO_NOTICE_LIB_CODE, CDialog)
	//{{AFX_MSG_MAP(CECO_NOTICE_LIB_CODE)
	ON_BN_CLICKED(IDC_bSEARCH, OnbSEARCH)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CECO_NOTICE_LIB_CODE message handlers
BOOL CECO_NOTICE_LIB_CODE::OnInitDialog() 
{
	CDialog::OnInitDialog();
	
	// TODO: Add extra initialization here
	if(InitESL_Mgr(_T("SM_ECO_NOTICE_LIB_CODE"))<0)
	{
		AfxMessageBox(_T("InitESL_Mgr() Error~!"));
		return FALSE ;
	}
      
    m_CurrentCM =_T("CM_ECO_NOTICE_LIB_CODE");
	m_CurrentDM =_T("DM_ECO_NOTICE_LIB_CODE");
	m_CurrentGrid =_T("MainGrid") ;


    INT ids ;
	CString sWhere ;
	ids = InitDisplay(sWhere) ;
  

	return TRUE;  // return TRUE unless you set the focus to a control
	              // EXCEPTION: OCX Property Pages should return FALSE
}

INT CECO_NOTICE_LIB_CODE::InitDisplay(CString sWhere)
{
	CESL_DataMgr *pDM = FindDM(m_CurrentDM);
	if(pDM == NULL) {
		AfxMessageBox(_T("FindDM() Error~!"));
		return -1 ;
	}

	CESL_ControlMgr *pCM = FindCM(m_CurrentCM);
	if(pCM == NULL) {
		AfxMessageBox(_T("FindCM() Error~!"));
		return -1;
	}

	CRS_SQL m_rs_sql(this) ;
	
//	m_rs_sql.ES_Select (pDM,sWhere,m_CurrentDM,100,3) ;

	

	// Grid �ʱ�ȭ
	if ( !m_pGrid )
		m_pGrid = (CESL_Grid*)pCM->FindControl( _T("MainGrid"));

	if ( !m_pGrid )
	{
		AfxMessageBox(_T("GRID �ʱ�ȭ ����(MainGrid)"));
		return FALSE;
	}

	// grid display
//	if( m_pGrid-> < 0 ) return FALSE;
	AllControlDisplay (m_CurrentCM ,-1) ;

	return 0 ;
}

VOID CECO_NOTICE_LIB_CODE::OnbSEARCH() 
{
	// TODO: Add your control notification handler code here
	
	INT ids ;
	CString sWhere ;
    CString sName ;
	ids = GetControlData (m_CurrentCM,_T("��������"),sName,-1) ;

	//sWhere.Format (_T(" NAME between  '%s' and '%s��'"),sName,sName) ;
	sWhere.Format (_T(" LIB_NAME LIKE  '%s%%'"),sName) ;
	
	ids = InitDisplay(sWhere) ;


}

VOID CECO_NOTICE_LIB_CODE::OnOK() 
{
	// TODO: Add extra validation here
	CESL_ControlMgr *pCM = FindCM(m_CurrentCM);
	if(pCM == NULL) {
		AfxMessageBox(_T("FindCM() Error~!"));
		return ;
	}

	CESL_Grid *m_pGrid = (CESL_Grid*)pCM->FindControl (m_CurrentGrid);
	if(m_pGrid == NULL) {
		AfxMessageBox(_T("CESL_Grid() Error~!"));
		return ;
	}

  //CArray<CString,CString> arLibrary ;   
	m_arLibrary.RemoveAll ();
	m_Lib_Code.RemoveAll ();
	m_Lib_Name.RemoveAll () ;

	m_pGrid->SelectMakeList () ;
     
	INT      ids ,SelectCnt ,m_idx  ;
	CString  sLib_id,sName , sNameCode ;
	
	SelectCnt = m_pGrid->SelectGetCount () ;

    for(INT i = 0 ; i < SelectCnt ;i++) 
	{
	    m_idx = m_pGrid->SelectGetIdx () ;
		ids = GetDataMgrData (m_CurrentDM,_T("LIB_CODE"),sLib_id,m_idx );	
        ids = GetDataMgrData (m_CurrentDM,_T("LIB_NAME"),sName ,m_idx ) ;
		sNameCode.Format (_T("%s(%s)"),sName,sLib_id) ;
        
		m_Lib_Code.Add (sLib_id);
		m_Lib_Name.Add (sName);
		m_arLibrary.Add (sNameCode) ;
		sLib_id.Empty ();
		sName.Empty ();
	    m_pGrid->SelectGetNext () ;
	}
     

	CDialog::OnOK();
}
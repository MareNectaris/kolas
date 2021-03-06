#[Data Manager]100001180 ▶ DM_단행_자료반출_종정보
ALIAS=DM_단행_자료반출_종정보
CONNECTION_INFO=kolas2@k2up/kolas2#[]
TBL_NAME=BO_SPECIES_TBL S, IDX_BO_TBL I, BO_PURCHASEINFO_TBL P
CONDITION=I.REC_KEY = S.REC_KEY AND I.REC_KEY = P.SPECIES_KEY  AND I.MANAGE_CODE=UDF_MANAGE_CODE
EXTRA_CONDITION=
#Field Alias|Field Name|Field Type|InitValue|Data Type|
BS_REC_KEY|S.REC_KEY|int|||
BS_수입년도|S.ACQ_YEAR|str|||
BS_업무구분|S.WORK_CODE|str|||
BS_제어번호|S.CONTROL_NO|str|||
BS_제어자료구분|S.CONTROL_MAT_CODE|str|||
BS_자료구분|S.MAT_CODE|str|||
BS_형식구분|S.FORM_CODE|str|||
BS_보조등록구분|S.SUB_REG_CODE|str|||
BS_매체구분|S.MEDIA_CODE|str|||
BS_이용대상구분|S.USE_OBJ_CODE|str|||
BS_이용제한구분|S.USE_LIMIT_CODE|str|||
BS_관리구분|S.MANAGE_CODE|str|||
BS_MARC|S.MARC|str|||
BS_작업상태구분|S.LOC_FLAG|str|||
BS_주제부호|S.SUBJECT_CODE|str|||
BS_분류기호구분|S.CLASS_NO_TYPE|str|||
BS_KDC분류기호|S.KDC_CLASS_NO|str|||
BS_KDC버전|S.KDC_CLASS_NO_VER|str|||
BS_DDC분류기호|S.DDC_CLASS_NO|str|||
BS_DDC버전|S.DDC_CLASS_NO_VER|str|||
BS_기타분류기호|S.ECT_CLASS_NO|str|||
BS_종배가위치부호|S.SHELF_LOC_CODE|str|||
BS_목차공통정보KEY|S.TOC_COMMON_KEY|int|||
BS_센터업로드상태|S.CENTER_UPLOAD_STATUS|str|||
BS_MARK|S.REMARK|str|||
BS_작업자|S.WORKER|str|||
BS_입력일자|S.INPUT_DATE|str|||
BS_복본여부|S.DUP_FLAG|str|||
BS_기본값적용여부|S.APPLY_YN|str|||
BS_목록작업상태|S.CATALOG_STATUS|str|||
BS_최초작업|S.FIRST_WORK|str|||
BS_마지막작업|S.LAST_WORK|str|||
BS_우선정리자료여부|S.PRIORITY_YN|str|||
BS_사용자정의코드1|S.USER_DEFINE_CODE1|str|||
BS_사용자정의코드2|S.USER_DEFINE_CODE2|str|||
BS_사용자정의코드3|S.USER_DEFINE_CODE3|str|||

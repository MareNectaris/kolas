#[Data Manager]61752317 ▶ DM_부록원부번호설정
ALIAS=DM_부록원부번호설정
CONNECTION_INFO=kolas2@k2up/kolas2#[]
TBL_NAME=co_accession_rec_tbl
CONDITION=
EXTRA_CONDITION=ORDER BY ACCESSION_REC_NO
#Field Alias|Field Name|Field Type|InitValue|Data Type|
원부작성년도|ACCESSION_REC_MAKE_YEAR|str|||
원부번호|ACCESSION_REC_NO|int|||
수입구분|ACQUISIT_CODE|str|||
목록일자|CATALOG_DATE|str|||
목록작업자|CATALOG_WORKER|str|||
분류일자|CLASS_DATE|str|||
직명|CLASS_NAME|str|||
분류작업자|CLASS_WORKER|str|||
과명|DIVISION_NAME|str|||
FIRST_WORK|FIRST_WORK|str|||
책수|GET_ACCESSION_BO_BOOK_COUNT(REC_KEY)|str|||
마지막등록번호|GET_ACCESSION_BO_MAX_REG_NO(REC_KEY)|||udf|
등록번호|GET_ACCESSION_BO_MIN_REG_NO(REC_KEY) || GET_ACCESSION_BO_MAX_REG_NO(REC_KEY) AS REG|str||udf|
종수|GET_ACCESSION_BO_SPECIES_COUNT(REC_KEY)|str|||
장비일자|LABELING_DATE|str|||
장비작업자|LABELING_WORKER|str|||
LAST_WORK|LAST_WORK|str|||
인계일자|LOC_TRANSFER_DATE|str|||
정리완료일자|PROCESSING_COMPLETE_DATE|str|||
정리완료자|PROCESSING_WORKER|str|||
공급자|PROVIDER|str|||
발행형태구분|PUBLISH_FORM_CODE|str|||
REC_KEY|REC_KEY|str|||
등록작업자|REGISTRANT|str|||
등록일자|REG_DATE|str|||
배가일자|SHELF_DATE|str|||
배가작업자|SHELF_WORKER|str|||
원부작성자|ACCESSION_REC_MAKER|str|||

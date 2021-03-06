#[Data Manager]60191309 ▶ DM_SE_LOC_1100
ALIAS=DM_SE_LOC_1100
CONNECTION_INFO=kolas2@k2up/kolas2#[]
TBL_NAME=SE_BOOK_TBL B , SE_SPECIES_TBL S , SE_VOL_TBL V ,IDX_SE_TBL I
CONDITION=S.REC_KEY = B.SPECIES_KEY  AND I.REC_KEY = S.REC_KEY AND V.REC_KEY = B.VOL_KEY AND B.BOOK_TYPE IN ('A','B','C') AND I.MANAGE_CODE=UDF_MANAGE_CODE
EXTRA_CONDITION=ORDER BY I.TITLE_INFO
#Field Alias|Field Name|Field Type|InitValue|Data Type|
IBS_청구_도서기호|B.BOOK_CODE|str|||
정리완료일자|B.CAT_COMPLETE_DATE|str|||
IBS_청구_분류기호|B.CLASS_NO|str|||
분류기호|B.CLASS_NO|str|||
IBS_청구_복본기호|B.COPY_CODE|str|||
이전자료상태|B.PREV_WORKING_STATUS|str|||
책정보KEY|B.REC_KEY|int|||
등록번호|B.REG_NO|str|||
IBS_청구_별치기호_코드|B.SEPARATE_SHELF_CODE|str|||
최초배가일자|B.SHELF_DATE|str|||
자료실|B.SHELF_LOC_CODE|str|||
IBS_청구_권책기호|B.VOL_CODE|str|||
자료상태|B.WORKING_STATUS|str|||
원부번호|(SELECT MAX(CART.ACCESSION_REC_NO) FROM CO_ACCESSION_REC_TBL CART WHERE CART.REC_KEY = B.ACCESSION_REC_KEY )|int|||
저작자|I.AUTHOR_INFO|str|||
분류기호구분|I.CLASS_NO_TYPE|str|||
발행자|I.PUB_INFO|str|||
서명|I.TITLE_INFO|str|||
복본여부|S.DUP_FLAG|str||UDF|
종정보KEY|S.REC_KEY|int|||
권호KEY|V.REC_KEY|int|||
권호명|V.VOL_TITLE|str|||
번호||||UDF|
청구기호||||UDF|
부록정보|DECODE( B.BOOK_TYPE, 'B', '제본', 'C', '일반', 'A', '부록', 'M', '결호', 'L', '지연' )|str|||
표제정보사항|CONCAT(I.TITLE_INFO, CONCAT(' [ ', CONCAT( V.VOL_TITLE, CONCAT( DECODE( NVL(TRIM(V.OTHER_VOL_TITLE),'0') , '0', '', CONCAT(' : ',V.OTHER_VOL_TITLE) ) , ' ] ' ))))||||

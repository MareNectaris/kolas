#[Data Manager]60138053 ▶ DM_연속_차수번호
ALIAS=DM_연속_차수번호
CONNECTION_INFO=kolas2@k2up/kolas2#[]
TBL_NAME=SE_PURCHASE_SEQ_NO_TBL N, CO_BUDGET_EXECUTION_TBL B
CONDITION=N.REC_KEY = B.EXECUTE_GROUP_KEY(+) AND N.MANAGE_CODE=UDF_MANAGE_CODE
EXTRA_CONDITION=ORDER BY N.SEQ_NO DESC
#Field Alias|Field Name|Field Type|InitValue|Data Type|
UDF_종수|(select count(*) from se_purchase_species_tbl s where s.order_year = n.acq_year and s.order_seq_no = n.seq_no AND MANAGE_CODE=UDF_MANAGE_CODE)|str|||
차수년도|N.ACQ_YEAR|int|||
최초작업|N.FIRST_WORK|str|||
마지막작업|N.LAST_WORK|str|||
마지막작업번호|N.LAST_WORK_NO|int|||
REC_KEY|N.REC_KEY|int|||
차수번호|N.SEQ_NO|int|||
생성일|N.SEQ_NO_CREATE_DATE|str|||
생성자|N.SEQ_NO_CREATE_WORKER|str|||
작업상태|N.WORKING_STATUS|str|||
UDF_작업상태||str||UDF|
UDF_예산집행상태|DECODE(B.BUDGET_EXECUTION_STATUS,'1','집행','미집행')|str|||
예산집행정보KEY|B.REC_KEY|int|||
예산집행상태|B.BUDGET_EXECUTION_STATUS|str|||

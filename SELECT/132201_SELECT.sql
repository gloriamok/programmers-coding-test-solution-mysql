-- 12세 이하인 여자 환자 목록 출력하기
SELECT PT_NAME, PT_NO, GEND_CD, AGE, IF(TLNO IS NULL, 'NONE', TLNO) AS TLNO
FROM PATIENT
WHERE AGE <= 12 AND GEND_CD = 'W'
ORDER BY AGE DESC, PT_NAME ASC

-- COALESCE(TLNO, 'NONE') AS TLNO 도 가능
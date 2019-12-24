# MTS 업무 기록

## 2019년 12월 4주
### 12월 23일
TOSS CID 발급 & 알람 등록
tbl_code와 tbl_logon 에서 주의사항  
-> job 번호 관련 주의: code에서 job 코드 각자 생성. tbl_code와 tbl_code 테이블에 app_name 생성시 주의(리포트와 관련된 부분).  
  
알람 등록 실수 ㅠㅜ 
-> 알람 등록을 실수해서 전체 메시지 바디를 수정해버렸다 ㅠㅜ  
-> update 시 where 절을 반드시 쓸 수 있도록 하자 ㅠㅜ  
ex>  
declare  
begine  
  for i in 1 .. 20  
  loop
    update tbl set target_column = 'value';  
  end loop;  
end;  

가 아닌  

declare  
begine  
  for i in 1 .. 20  
  loop
    update tbl set target_column = 'value' where condition like 'value%';  
  end loop;  
end;  


## 2019년 12월 3주
### 12월 19일
2020년도 계획서 작성  
- 차세대 게이트웨이, 관리 웹, 고객 분석, 설치 스크립트 등

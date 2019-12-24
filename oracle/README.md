# ORACLE 작업 하면서 배운 내용

## 2019.12.24
network access control list(ACL) 생성, 추가 및 테스트 진행
알림 서비스를 등록하기 위해 oracle에서 웹서비스를 utl_tcp를 통해 호출해야 했다. oracle11g 부터 보안상 이유로 acl 을 등록해야 해당 기능을 사용할 수 있으므로 ACL 을 생성하고 특정 host IP에 접속할 수 있도록 할당하였다.

reference directory: network-ACL/

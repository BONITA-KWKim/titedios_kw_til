--DBMS acl 추가

/* check ACL */
select * from dba_network_acls;

/* create ACL */
BEGIN
    dbms_network_acl_admin.create_acl ( acl          => 'utl_tcp.xml',
                                        description  => 'ACL for alarm system',
                                        principal    => 'NEOATK',
                                        is_grant     => TRUE,
                                        privilege    => 'connect');
END;
/ 
COMMIT;

/* check path for created xml file */
SELECT any_path
FROM resource_view
WHERE any_path like '/sys/acls/%.xml';

/* assign ACL */
BEGIN
    DBMS_NETWORK_ACL_ADMIN.ASSIGN_ACL (
        acl => 'utl_tcp.xml',
        host => '210.116.121.230',  -- target host name
        lower_port  => null,
        upper_port  => null);
END;
/ 
COMMIT;

/* unassign ACL */
BEGIN
  DBMS_NETWORK_ACL_ADMIN.UNASSIGN_ACL(host => '210.116.121.230');
END;
/ 
COMMIT;

/* drop ACL*/
BEGIN
    DBMS_NETWORK_ACL_ADMIN.DROP_ACL(
        acl =>'utl_tcp.xml');
END;



-----------------------������ռ�

CREATE SMALLFILE TABLESPACE "DEMO" 
DATAFILE 'D:\APP\ADMINISTRATOR\ORADATA\ORCL\mytablespace'
SIZE 100M 
AUTOEXTEND ON NEXT 10M 
MAXSIZE UNLIMITED LOGGING
EXTENT MANAGEMENT LOCAL SEGMENT SPACE MANAGEMENT AUTO DEFAULT NOCOMPRESS


---------------------����һ���û�

create user demo2
     identified by 123456
     default tablespace DEMO   ----------------���DEMO������ı�ռ��Ӧ
     quota 10m on DEMO
     temporary tablespace temp ;

 

------------------------���´����û�Ȩ�ޣ�Ҫ������ȥ���߲��ܲ���
grant create session,create table to demo2 ; 
grant resource,connect to demo2 ; 

------------------------����Ȩ��


grant connect to demo2 ;
grant dba to demo2 ;
-- Grant/Revoke system privileges 
grant alter session to demo2 ;
grant create any directory to demo2 ;
grant create any procedure to demo2 ;
grant create any sequence to demo2 ;
grant create session to demo2 ;
grant create synonym to demo2 ;
grant create table to demo2 ;
grant create type to demo2 ;
grant create view to demo2 ;
grant select any dictionary to demo2 ;
grant select any table to demo2 ;
grant unlimited tablespace to demo2 ;


 

----------------------------�������У���1000��ʼ����ʼֵ���

create sequence  sq_1 start with 1000;

 

---------------------------������

create table bill(
       bl_id                         number ,        ---id
       bl_number                     varchar2(50),        ---���
       bl_sp_name                    varchar2(50),       ---��Ʒ��
       bl_count                      number,         ---��Ʒ����
       bl_money                      number,           --���׽��
       bl_if_money                   varchar2(10),     --�Ƿ񸶿�
       bl_gy_name                    varchar2(50),     --��Ӧ������
       bl_detail                     varchar2(50),     --��Ʒ����
       bl_create                     date,             --����ʱ��
       bl_delete                     date,             --ɾ��ʱ��
       bl_if_delete                  varchar2(10),      --�Ƿ�ɾ��
       bl_delete_name                varchar2(50),      --ɾ������
       bl_edit_time                  date           --�ϴα༭ʱ��
);



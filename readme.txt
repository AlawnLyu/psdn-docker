1 ����ִ��create_user_database�е���Ӧ�����pdns��mysql�û�������޸����û��������룬��Ҫ�޸Ķ�Ӧ��pdns.conf�ļ���config.inc.php�ļ����û��������룬���ݿ��ַ���˿ں�Ҳ��Ҫ�Ƚ����޸�
2 ִ��powerdns.sql�е���������ݿ��
3 ��Dockerfile,config.inc.php,run.sh,pdns.conf����ͬһĿ¼��
4 �ڵ�ǰĿ¼��ִ��"docker build -t wtown/pdns:1.1.1 . "��������docker����
5 ��������ִ��"docker run -it --name test-dns -p 8000:80 -d wtown/pdns:1.1.1"
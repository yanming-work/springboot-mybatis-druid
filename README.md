# Spring Boot ���� Mybatis ʵ�� Druid ������Դ����

һ��������Դ��Ӧ�ó���

Ŀǰ��ҵ�����е����ݲ�������� Mybatis���� Druid ��ʲô�أ�
Druid �� Java �����ݿ����ӳ������Druid �ܹ��ṩǿ��ļ�غ���չ���ܡ�������Լ�� SQL ���ڼ��ҵ����Բ�ѯ����ѯ SQL �б�ȡ�Druid ������Ҫ���������֣�
1. DruidDriver ���� Driver���ܹ��ṩ���� Filter��Chain ģʽ�Ĳ����ϵ��
2. DruidDataSource ��Ч�ɹ�������ݿ����ӳ�
3. SQLParser

��ҵ���������ﵽ��һ���̶ȣ�DBA ��Ҫ�����������ݿ���Դ������������Ļ��������ã��Ѻ��ĸ�Ƶ�����ݷ��������ϣ��Ѵ�Ҫ�����ݷ��ڴӿ⣬�����á���Դ������������˼�������ݷ��ڲ�ͬ�����ݿ������Ҫͨ����ͬ������Դ���в������ݡ��������Ǿٸ� springboot-mybatis-druid ���̰�����
city �û��������� demo_master �ϣ���ַ�� user �ڴӿ� demo_cluster �ϡ�����ʵ�ֻ�ȡ �����û�����ȡ�û���Ϣ�������ӿ�ĵ�ַ��Ϣ REST API����ô��Ҫ������ʹӿ��зֱ��ȡ���ݣ�����ҵ���߼�����װ���ء�


1.Mysql���ݿ�׼��
a.���� demo_master ���ݿ�

CREATE DATABASE demo_master;

b.������ city 

c.���� demo_cluster ���ݿ�

CREATE DATABASE demo_cluster;

d.������ user 

��ϸ��������Լ����ݽ���Ŀ��SQL

2. ��Ŀ�ṹ����
��Ŀ�ṹ����ͼ��ʾ��
com.demo.springboot.config.ds �C ���ò㣬����������Դ�����ã����� demo_master �� demo_cluster ������Դ����
com.demo.springboot.controller �C Controller ��
com.demo.springboot.mapper �C ���ݲ����� DAO��ϸ���� master �� cluster ���µ� DAO ������ *Mapper.java �� *Mapper.xml�����ú󣬿���mybatis-generator����Զ����ɣ��Զ����ɵ�����Ϊ*Mapper,�Զ����ɺ�һ��Ҫ�Լ��ֶ������ϼ���ע�� @Mapper ��
com.demo.springboot.domain �C ʵ���ࣨ���ú󣬿���mybatis-generator����Զ����ɣ�
com.demo.springboot.service �C ҵ���߼���
com.demo.springboot.util �C ���ù�����
com.demo.springboot.Application �C Ӧ��������
application.properties �C Ӧ�������ļ���Ӧ���������Զ���ȡ����

3.�����ݿ�����
�� application.properties �ļ��� �޸���Ӧ����������Դ���ã���������Դ��ַ���˺š�����ȡ������������ MySQL����������������� pom��Ȼ���޸����������á���

4.���빤��
����Ŀ��Ŀ¼ springboot-mybatis-druid������ maven ָ�
mvn clean install

5.���й���
�Ҽ����� Application Ӧ�������ࣨλ�ã�/5.���й���
�Ҽ����� Application Ӧ�������ࣨλ�ã�/springboot-mybatis-druid/src/main/java/com/demo/springboot/Application.java���� main �����������ͳɹ������� springboot-mybatis-druid ������/src/main/java/com/demo/springboot/Application.java���� main �����������ͳɹ������� springboot-mybatis-druid ������



��������򿪣�
http://localhost:8080/city/all
��������� JSON �����

[
    {
        "cid": 101,
        "city": "������",
        "pid": 1
    },
    {
        "cid": 201,
        "city": "�����",
        "pid": 2
    },
    {
        "cid": 301,
        "city": "�Ϻ���",
        "pid": 3
    },
    {
        "cid": 401,
        "city": "������",
        "pid": 4
    }
	......
]

��������򿪣�
http://localhost:8080/user/all
��������� JSON �����
[
    {
        "age": 24,
        "id": 1,
        "name": "����"
    },
    {
        "age": 30,
        "id": 2,
        "name": "����"
    }
]

���� city ��������� demo_master �⣬user ��������� demo_cluster �⡣��Ŀ��ͬʱ����2�����ݿ⡣


6.ʹ�� mybatis-generator ���ɴ��뷽��

a.pom.xml ������jar 

<!--mybatis�������ɹ��� -->
		<dependency>
			<groupId>org.mybatis.generator</groupId>
			<artifactId>mybatis-generator-core</artifactId>
			<version>1.3.2</version>
		</dependency>

		
		<build>
		<plugins>
			<plugin>
                    <groupId>org.mybatis.generator</groupId>
                    <artifactId>mybatis-generator-maven-plugin</artifactId>
                    <version>1.3.2</version>
                    <dependencies>
                        <dependency>
                            <groupId>mysql</groupId>
                            <artifactId>mysql-connector-java</artifactId>
                            <version>5.1.41</version>
                        </dependency>
                    </dependencies>
                    <configuration>
                         <!--�����ļ���·����ʹ���ĸ����ݿ� �͸ĳ��ĸ������ļ�-->
                         <configurationFile>${basedir}/src/main/resources/generatorConfig_cluster.xml</configurationFile> 
                        <overwrite>true</overwrite>
                    </configuration>
                </plugin>
		</plugins>
	</build>
	
	�ļ� generatorConfig_cluster.xml �� /generatorConfig_master.xml  Ϊ mybatis-generator �������ݿ�����ã���ϸ���ÿɲ鿴mybatis-generator  ������API��
	
b.���ɴ���
ѡ����Ŀ����run as ����maven build���� name ��д mybatis-generator�������ῴ����һ��Goals��������д mybatis-generator:generate  ����Run

�����������̨����success��˵���ɹ�����������UserMapper.java��userMapper.xml��User.java
���ɳɹ���ǵ� �� * Mapper.java ���Ƽ��� @Mapper ע�⡣

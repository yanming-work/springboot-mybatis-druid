# Spring Boot 整合 Mybatis 实现 Druid 多数据源配置

一、多数据源的应用场景

目前，业界流行的数据操作框架是 Mybatis，那 Druid 是什么呢？
Druid 是 Java 的数据库连接池组件。Druid 能够提供强大的监控和扩展功能。比如可以监控 SQL ，在监控业务可以查询慢查询 SQL 列表等。Druid 核心主要包括三部分：
1. DruidDriver 代理 Driver，能够提供基于 Filter－Chain 模式的插件体系。
2. DruidDataSource 高效可管理的数据库连接池
3. SQLParser

当业务数据量达到了一定程度，DBA 需要合理配置数据库资源。即配置主库的机器高配置，把核心高频的数据放在主库上；把次要的数据放在从库，低配置。开源节流嘛，就这个意思。把数据放在不同的数据库里，就需要通过不同的数据源进行操作数据。这里我们举个 springboot-mybatis-druid 工程案例：
city 用户表在主库 demo_master 上，地址表 user 在从库 demo_cluster 上。下面实现获取 根据用户名获取用户信息，包括从库的地址信息 REST API，那么需要从主库和从库中分别获取数据，并在业务逻辑层组装返回。


1.Mysql数据库准备
a.创建 demo_master 数据库

CREATE DATABASE demo_master;

b.创建表 city 

c.创建 demo_cluster 数据库

CREATE DATABASE demo_cluster;

d.创建表 user 

详细建表语句以及数据建项目中SQL

2. 项目结构介绍
项目结构如下图所示：
com.demo.springboot.config.ds – 配置层，这里是数据源的配置，包括 demo_master 和 demo_cluster 的数据源配置
com.demo.springboot.controller – Controller 层
com.demo.springboot.mapper – 数据操作层 DAO，细分了 master 和 cluster 包下的 DAO 操作类 *Mapper.java 和 *Mapper.xml（表建好后，可由mybatis-generator插件自动生成，自动生成的名称为*Mapper,自动生成后一定要自己手动在类上加上注解 @Mapper ）
com.demo.springboot.domain – 实体类（表建好后，可由mybatis-generator插件自动生成）
com.demo.springboot.service – 业务逻辑层
com.demo.springboot.util – 常用工具类
com.demo.springboot.Application – 应用启动类
application.properties – 应用配置文件，应用启动会自动读取配置

3.改数据库配置
打开 application.properties 文件， 修改相应的主从数据源配置，比如数据源地址、账号、密码等。（如果不是用 MySQL，自行添加连接驱动 pom，然后修改驱动名配置。）

4.编译工程
在项目根目录 springboot-mybatis-druid，运行 maven 指令：
mvn clean install

5.运行工程
右键运行 Application 应用启动类（位置：/5.运行工程
右键运行 Application 应用启动类（位置：/springboot-mybatis-druid/src/main/java/com/demo/springboot/Application.java）的 main 函数，这样就成功启动了 springboot-mybatis-druid 案例。/src/main/java/com/demo/springboot/Application.java）的 main 函数，这样就成功启动了 springboot-mybatis-druid 案例。



在浏览器打开：
http://localhost:8080/city/all
浏览器返回 JSON 结果：

[
    {
        "cid": 101,
        "city": "北京市",
        "pid": 1
    },
    {
        "cid": 201,
        "city": "天津市",
        "pid": 2
    },
    {
        "cid": 301,
        "city": "上海市",
        "pid": 3
    },
    {
        "cid": 401,
        "city": "重庆市",
        "pid": 4
    }
	......
]

在浏览器打开：
http://localhost:8080/user/all
浏览器返回 JSON 结果：
[
    {
        "age": 24,
        "id": 1,
        "name": "张三"
    },
    {
        "age": 30,
        "id": 2,
        "name": "李四"
    }
]

这里 city 结果体来自 demo_master 库，user 结果体来自 demo_cluster 库。项目可同时访问2个数据库。


6.使用 mybatis-generator 生成代码方法

a.pom.xml 加依赖jar 

<!--mybatis代码生成工具 -->
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
                         <!--配置文件的路径，使用哪个数据库 就改成哪个配置文件-->
                         <configurationFile>${basedir}/src/main/resources/generatorConfig_cluster.xml</configurationFile> 
                        <overwrite>true</overwrite>
                    </configuration>
                </plugin>
		</plugins>
	</build>
	
	文件 generatorConfig_cluster.xml 和 /generatorConfig_master.xml  为 mybatis-generator 连接数据库的配置，详细配置可查看mybatis-generator  的配置API。
	
b.生成代码
选中项目——run as ——maven build—— name 填写 mybatis-generator——（会看到有一个Goals）里面填写 mybatis-generator:generate  ——Run

如果看到控制台出现success，说明成功，即可生成UserMapper.java、userMapper.xml、User.java
生成成功后记得 在 * Mapper.java 类似加上 @Mapper 注解。

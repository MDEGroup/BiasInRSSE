1	git://github.com/puglieseweb/puglieseweb.com.git
2	#DEP#mysql:mysql-connector-java
3	#DEP#com.puglieseweb.app.web:services
4	#DEP#org.springframework:spring-aop
5	#DEP#org.bouncycastle:bcmail-jdk16
6	#DEP#com.puglieseweb.app.web:rest-clients
7	#DEP#org.bouncycastle:bcprov-jdk16
8	#DEP#org.mockito:mockito-all
9	#DEP#info.magnolia.ui:magnolia-ui-admincentral
10	#DEP#info.magnolia.about:magnolia-about-app
11	#DEP#org.springframework.webflow:spring-webflow
12	#DEP#info.magnolia:magnolia-empty-webapp
13	#DEP#com.puglieseweb.app.web:templates
14	#DEP#com.puglieseweb.app.web:puglieseweb
15	#DEP#info.magnolia.widgetset:magnolia-vaadin-widgetset
16	#DEP#info.magnolia.activation:magnolia-module-activation
17	#DEP#org.springframework:spring-test
18	#DEP#org.springframework:spring-webmvc
19	#DEP#info.magnolia.pages:magnolia-pages
20	#DEP#info.magnolia:magnolia-core
21	#DEP#info.magnolia:magnolia-templating
22	#DEP#info.magnolia.ui:magnolia-ui-project
23	#DEP#org.projectlombok:lombok
24	#DEP#com.puglieseweb.app.web:bootstrap
25	#DEP#org.hibernate:hibernate-validator
26	#DEP#info.magnolia.dam:magnolia-dam-templating
27	#DEP#info.magnolia.cache:magnolia-module-cache
28	#DEP#com.puglieseweb.app.web:magnolia-webapp
29	#DEP#info.magnolia:magnolia-project
30	#DEP#com.fasterxml.jackson.core:jackson-databind
31	#DEP#info.magnolia:magnolia-rendering
32	#DEP#org.slf4j:slf4j-log4j12
33	#DEP#com.puglieseweb.app.web:webflow
34	#DEP#info.magnolia.blossom:magnolia-module-blossom
35	#DEP#org.springframework:spring-web
36	#DEP#info.magnolia.bundle:magnolia-bundle-parent
37	#DEP#info.magnolia.dam:magnolia-dam-jcr
38	#DEP#javax.servlet:javax.servlet-api
39	#DEP#org.apache.tika:tika-parsers
40	#DEP#info.magnolia.dam:magnolia-dam-api
41	#DEP#info.magnolia.dam:magnolia-dam-core
42	#DEP#junit:junit
43	#DEP#info.magnolia.security:magnolia-security-app
44	#DEP#info.magnolia:magnolia-templating-jsp
45	#DEP#info.magnolia.dam:magnolia-dam-app
46	#DEP#net.sourceforge.openutils:openutils-log4j
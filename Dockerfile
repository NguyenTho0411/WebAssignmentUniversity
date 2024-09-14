# Sử dụng image Tomcat
FROM tomcat:10.0-jdk17

# Xóa các ứng dụng mặc định của Tomcat (tùy chọn)
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Sao chép file .war vào thư mục webapps
COPY target/PersonalWebsite-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/MurachEmailList.war
COPY target/MurachEmailList-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/MurachEmailList.war
COPY target/exercise_emaillist-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/MurachEmailList.war
COPY target/EmailList-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/MurachEmailList.war
COPY target/c5_exercise02-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/MurachEmailList.war

# Expose port
EXPOSE 8080

# Lệnh khởi động Tomcat
CMD ["catalina.sh", "run"]

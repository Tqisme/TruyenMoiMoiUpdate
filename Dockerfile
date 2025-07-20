# Sử dụng image chính xác Tomcat 11 + JDK 24
FROM tomcat:11.0.0-jdk-21-temurin

# Xóa các webapps mặc định
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file vào Tomcat, đặt tên là ROOT.war để truy cập tại /
COPY TruyenMoiMoi.war /usr/local/tomcat/webapps/ROOT.war

# Mở port 8080
EXPOSE 8080

CMD ["catalina.sh", "run"]

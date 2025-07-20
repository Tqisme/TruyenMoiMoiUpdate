FROM tomcat:11.0.9-jdk24  # Hoặc tomcat:9 nếu dùng JDK 8

# Xóa ứng dụng mặc định
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file .war của bạn vào thư mục webapps
COPY TruyenMoiMoi.war /usr/local/tomcat/webapps/ROOT.war

# Cổng mặc định là 8080
EXPOSE 8080

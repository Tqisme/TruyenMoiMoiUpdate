FROM tomcat:11.0.9-jre21-temurin-noble

# Xóa ứng dụng mặc định
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR của bạn vào làm ROOT
COPY TruyenMoiMoi.war /usr/local/tomcat/webapps/ROOT.war

# Mở cổng
EXPOSE 8080

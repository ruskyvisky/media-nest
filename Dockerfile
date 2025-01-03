# 1. Temel Görüntü
FROM openjdk:17-jdk-slim

# 2. Çalışma Dizinini Belirleme
WORKDIR /app

# 3. Uygulama JAR Dosyasını Kopyalama
# Render'da target dizini olmayabilir, yerel olarak JAR dosyasını doğru kopyaladığınızdan emin olun.
COPY mediaNest-0.0.1-SNAPSHOT.jar app.jar

# 4. Uygulama için Ortam Değişkeni Ayarları (isteğe bağlı)
ENV JAVA_OPTS=""

# 5. Uygulamanın Çalıştırılması
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar app.jar"]

# 6. Uygulama için Port Açma
EXPOSE 8080

#!/bin/bash

# Kullaniciya bilgi ver (Terminalde gorunur)
echo "Rapor olusturuluyor..."

# HTML baslangici
echo "<html>" > /var/www/html/index.html
echo "<head>" >> /var/www/html/index.html
echo "<meta charset='UTF-8'>" >> /var/www/html/index.html
echo "<title>Sunucu Durum Paneli</title>" >> /var/www/html/index.html

# Basit CSS Tasarimi
echo "<style>" >> /var/www/html/index.html
echo "body { font-family: Arial, sans-serif; margin: 40px; background-color: #f4f4f9; }" >> /var/www/html/index.html
echo "h1 { color: #2c3e50; text-align: center; border-bottom: 2px solid #ddd; padding-bottom: 10px; }" >> /var/www/html/index.html
echo "h3 { color: #34495e; margin-top: 30px; }" >> /var/www/html/index.html
echo "pre { background-color: #fff; padding: 15px; border-radius: 8px; border-left: 5px solid #3498db; box-shadow: 0 2px 5px rgba(0,0,0,0.1); font-size: 14px; }" >> /var/www/html/index.html
echo ".container { max-width: 800px; margin: 0 auto; }" >> /var/www/html/index.html
echo "</style>" >> /var/www/html/index.html

echo "</head>" >> /var/www/html/index.html
echo "<body>" >> /var/www/html/index.html

# Icerik Kutusu
echo "<div class='container'>" >> /var/www/html/index.html

# Baslik
echo "<h1>Linux Sunucu Durum Raporu</h1>" >> /var/www/html/index.html

# 1. Tarih ve Saat
echo "<h3>🕒 Tarih ve Saat</h3>" >> /var/www/html/index.html
echo "<pre>" >> /var/www/html/index.html
date >> /var/www/html/index.html
echo "</pre>" >> /var/www/html/index.html

# 2. CPU Durumu
echo "<h3>💻 CPU ve Yuk Durumu</h3>" >> /var/www/html/index.html
echo "<pre>" >> /var/www/html/index.html
uptime >> /var/www/html/index.html
echo "</pre>" >> /var/www/html/index.html

# 3. RAM Durumu
echo "<h3>🧠 RAM Kullanimi (MB)</h3>" >> /var/www/html/index.html
echo "<pre>" >> /var/www/html/index.html
free -m >> /var/www/html/index.html
echo "</pre>" >> /var/www/html/index.html

# 4. Disk Alani
echo "<h3>💾 Disk Doluluk Orani</h3>" >> /var/www/html/index.html
echo "<pre>" >> /var/www/html/index.html
df -h >> /var/www/html/index.html
echo "</pre>" >> /var/www/html/index.html

# 5. Aktif Kullanicilar
echo "<h3>👥 Sisteme Bagli Kullanicilar</h3>" >> /var/www/html/index.html
echo "<pre>" >> /var/www/html/index.html
who >> /var/www/html/index.html
echo "</pre>" >> /var/www/html/index.html

# Kapanis
echo "<p style='text-align:center; color:#888; margin-top:40px;'>Otomatik Raporlama Sistemi</p>" >> /var/www/html/index.html
echo "</div>" >> /var/www/html/index.html
echo "</body>" >> /var/www/html/index.html
echo "</html>" >> /var/www/html/index.html

# Kullaniciya bilgi ver (Terminalde gorunur)
echo "Islem tamamlandi! Dosya suraya kaydedildi: /var/www/html/index.html"
echo "Tarayicidan kontrol edebilirsiniz."

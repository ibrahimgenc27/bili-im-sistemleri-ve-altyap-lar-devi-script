# Linux Sunucu Durum Paneli (Server Dashboard)

Bu proje, Linux sunucusunun temel sağlık durumunu (CPU, RAM, Disk, Kullanıcılar) izleyen ve bunları bir web arayüzünde görüntüleyen bir Bash script otomasyonudur.

## 🚀 Özellikler
Script (`monitor.sh`) aşağıdaki verileri sistemden çeker ve HTML formatına dönüştürür:
- **Tarih ve Saat:** `date` komutu ile.
- **CPU Kullanımı:** `top` komutu ile anlık yük.
- **RAM Durumu:** `free -m` komutu ile bellek kullanımı.
- **Disk Alanı:** `df -h` komutu ile disk doluluk oranı.
- **Aktif Kullanıcılar:** `who` komutu ile sisteme bağlı kullanıcılar.

## 🛠 Kurulum ve Kullanım

### 1. Gereksinimler
Bu projenin çalışması için sunucuda bir web sunucusu (Nginx veya Apache) kurulu olmalıdır.

**Nginx Kurulumu (Örnek):**
```bash
sudo apt update
sudo apt install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
```

### 2. Dosya İzinleri
Web sunucusunun varsayılan dizini genellikle `/var/www/html`'dir. Scriptin buraya yazabilmesi için izinlerin ayarlanması gerekir:

```bash
sudo chmod 777 /var/www/html
```
*(Not: Prodüksiyon ortamında daha kısıtlı izinler önerilir, ancak ödev kapsamında yazma izni yeterlidir.)*

### 3. Scriptin Hazırlanması
Script dosyasını (`monitor.sh`) sunucunuza indirin ve çalıştırma izni verin:

```bash
chmod +x monitor.sh
```

Manuel test etmek için:
```bash
./monitor.sh
```
Tarayıcınızdan `http://localhost` veya `http://SUNUCU_IP_ADRESI` adresine giderek sonucu görebilirsiniz.

## ⏰ Otomasyon (Cronjob Ayarı)

Dashboard'un sürekli güncel kalması için scriptin her dakika çalışması gerekmektedir. Bunun için `crontab` kullanılmıştır.

Ayarı görüntülemek için:
```bash
crontab -l
```

Kullanılan Cron kuralı:
```cron
* * * * * /home/kullanici/monitor.sh
```
*(Not: `/home/kullanici/monitor.sh` kısmını scriptin sunucudaki tam yolu ile değiştiriniz.)*

## 📝 Ödev Teslim Bilgileri
- **Ders:** Bilişim Sistemleri Altyapı ve Teknolojileri
- **Teslim Tarihi:** 21.12.2025

# 🔄 Windows Update Önbelleği Sıfırlama Botu (.BAT)

Windows işletim sistemlerinde sıkça karşılaşılan güncelleme takılmaları, indirme hataları (0x8024... vb.) veya güncelleme servislerinin arka planda yüksek işlemci/internet tüketmesi gibi sorunları çözmek amacıyla geliştirilmiş, Windows Update servislerini tamamen sıfırlayan güvenli bir Batch scriptidir.

---

## ✨ Özellikler

Bu script çalıştırıldığında sisteminizde aşağıdaki işlemleri sırasıyla gerçekleştirir:

* **Servisleri Durdurma:** Arka planda çalışan ve dosyaların silinmesini engelleyen `Windows Update (wuauserv)`, `Şifreleme Hizmetleri (cryptSvc)`, `Arka Plan Akıllı Aktarım Hizmeti (bits)` ve `Windows Modül Yükleyicisi (msiserver)` servislerini güvenli bir şekilde durdurur.
* **Önbellek Temizliği:** Windows'un güncellemeleri indirdiği ve zaman zaman bozulan `SoftwareDistribution` ile `catroot2` klasörlerinin adını değiştirerek işletim sisteminin temiz bir güncelleme havuzu oluşturmasını sağlar.
* **Servisleri Yeniden Başlatma:** Durdurulan tüm kritik Windows servislerini otomatik olarak tekrar aktif hale getirir.

---

## 🛠️ Kurulum ve Kullanım

Scripti bilgisayarınızda çalıştırmak oldukça basittir:

1. Bu depoda (repository) bulunan **`update_fixer.bat`** dosyasını bilgisayarınıza indirin (veya kodları kopyalayıp bir not defterine yapıştırarak uzantısını `.bat` olacak şekilde kaydedin).
2. Dosyaya sağ tıklayın ve **`Yönetici Olarak Çalıştır`** (Run as Administrator) seçeneğini seçin. *(Kritik sistem servislerine müdahale edildiği için bu adım zorunludur).*
3. Konsol ekranındaki işlemler tamamlanıp "Update Sıfırlandı!" uyarısı gelene kadar bekleyin. Ardından herhangi bir tuşa basarak kapatabilirsiniz.
4. En iyi sonuç için işlemi tamamladıktan sonra **bilgisayarınızı yeniden başlatmanız** önerilir.

---

## ⚠️ Önemli Notlar ve Güvenlik

* Bu script **kesinlikle kişisel dosyalarınıza veya yüklü programlarınıza zarar vermez.** Yalnızca Windows'un geçici güncelleme indirme geçmişini sıfırlar.
* İşlem sonrasında Windows Ayarları > Güncelleme bölümüne girdiğinizde güncelleme geçmişiniz temizlenmiş görünecektir; bu durum normaldir ve sistemin güncellemeleri sıfırdan, temiz bir şekilde denetlemesini sağlar.

---

## 👨‍💻 Geliştirici

Bu proje **Enes** tarafından geliştirilmiştir. 

[![GitHub](https://img.shields.io/badge/GitHub-Profile-black?style=flat-square&logo=github)]([https://github.com/AsyncDevss]

---

### 📝 Lisans
Bu proje MIT lisansı altında korunmaktadır. Dilediğiniz gibi geliştirebilir, çatallayabilir (fork) veya kendi projelerinizde kullanabilirsiniz.

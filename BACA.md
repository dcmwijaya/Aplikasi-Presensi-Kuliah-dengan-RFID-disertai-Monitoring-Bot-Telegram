[![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.svg?style=flat)](https://github.com/ellerbrock/open-source-badges/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg?logo=github&color=%23F7DF1E)](https://opensource.org/licenses/MIT)
![GitHub last commit](https://img.shields.io/github/last-commit/devancakra/Aplikasi-Presensi-Kuliah-dengan-RFID-disertai-Monitoring-Bot-Telegram?logo=Codeforces&logoColor=white&color=%23F7DF1E)
![Project](https://img.shields.io/badge/Project-Multi-%2DPlatform-light.svg?style=flat&logo=googlechrome&logoColor=white&color=%23F7DF1E)
![Type](https://img.shields.io/badge/Type-Campus%20Assignment-light.svg?style=flat&logo=gitbook&logoColor=white&color=%23F7DF1E)

# Aplikasi-Presensi-Kuliah-dengan-RFID-disertai-Monitoring-Bot-Telegram
<strong>Tugas Akhir ke-3 dalam Pemrograman API</strong><br><br>
ChatBot berbasis Telegram ini dibangun di atas platform ``` Google App Scripts ``` dengan menggunakan bahasa pemrograman ``` Javascript ```. Framework yang digunakan adalah <b><a href="https://lumpia.js.org/">Lumpia.js</a></b>. Tujuan dari bot ini adalah untuk memonitoring data kehadiran kuliah. Sedangkan aplikasi RFID ini dibuat oleh programmer untuk dapat membantu seseorang dalam mengisi presensi kuliah dengan cepat dan tepat. Aplikasi RFID ini dibangun dengan bahasa pemrograman ``` Visual Basic 6 ```.

<br><br>

## Kebutuhan Proyek
| Bagian | Deskripsi |
| --- | --- |
| Fitur | Keyboard Balasan, Pengendalian Masalah, Aktivitas Catatan Pengguna, Pemantauan Data Kehadiran, & Input Data Otomatis |
| Platform | Google Apps Script & Freemysqlhosting |
| Peralatan | Microsoft Visual Basic 6.0 Enterprise |
| Function VB 6 | keybd_event & Sleep |
| Kerangka Kerja | Lumpia.js |
| Kode | JavaScript, Visual Basic 6 |
| Sistem Operasi | Windows 10 |

<br><br>

## Unduh & Instal Visual Basic 6.0 Enterprise
<table><tr><td width="840">
  
```
https://bit.ly/VisualBasic6_Installer
```

</td></tr></table>

<br><br>

## Memulai
1. Buka situsnya: ``` https://www.freemysqlhosting.net/ ``` -> ``` Mendaftar untuk mendapatkan akun ``` -> ``` Masuk ```.<br><br>
2. Unduh & Ekstrak repositori ini.<br><br>
3. Impor file sql yang ada di direktori: ``` Aplikasi-Presensi-Kuliah-dengan-RFID-disertai-Monitoring-Bot-Telegram\Assets\database\rfid_bot.sql ```.<br><br>
4. Buka direktori: ``` Aplikasi-Presensi-Kuliah-dengan-RFID-disertai-Monitoring-Bot-Telegram\Src\RFID\Aplikasi RFID Presensi Bot Pintar.vbp ```, kemudian cari bagian module, silakan klik ``` Module2 (Module2.bas) ```.<br><br>
5. Isi bagian ``` dbName ```, ``` dbUser ```, ``` password ``` sesuai dengan SQL Cloud anda.<br><br>
   <img width="810" src="Assets/documentation/Database Connection.jpg" alt="db-connection"><br><br>
6. Buka ``` Module3 (Module3.bas) ```, lalu isi bagian ``` Kode Kartu RFID ```, ``` ID Telegram ```, dan ``` Nama pengguna Telegram ```.<br><br>
   <img width="810" src="Assets/documentation/Member Account.jpg" alt="member-account"><br><br>
   Penambahan data ini dilakukan secara manual, sehingga jika ada lebih dari 2 pengguna maka kode sumber perlu disesuaikan lagi.<br><br>
7. Buat proyek baru terlebih dahulu di platform: ``` Google apps script ```.<br><br>
8. Tambahkan ``` file baru ``` pada platform ``` Google apps script ``` dan terkait ``` nama file ``` atau ``` jumlah file ``` boleh beda sesuai kreasi masing-masing, sebab hal ini tidak akan memengaruhi kinerja sistem bot -> lalu jangan lupa untuk klik ``` Simpan ```.<br><br>
9. Buka direktori: ``` Aplikasi-Presensi-Kuliah-dengan-RFID-disertai-Monitoring-Bot-Telegram\Src\BOT\ ``` -> Salin & tempelkan seluruh isinya ke dalam file yang telah tersedia di platform ``` Google apps script ```.<br><br>
10. Masukkan ``` ID Pustaka ``` di bagian ``` Library ``` :
    <table><tr><td width="810">
       
    ```js
    1Yo6vQRwjG5Gl9jeEF0g2tBTUa0XN5MyT4G_HeDpRr9DvabxhRcSdhPNj
    ```

    </td></tr></table><br>
   
11. Tambahkan ``` pustaka tersebut ``` -> Selalu pilih ``` versi pustaka yang tertinggi ``` -> Simpan.<br><br>
12. Tempelkan ``` Api bot token telegram ``` yang telah anda peroleh dari ``` @BotFather ``` seperti berikut ini :
    <table><tr><td width="810">
       
    ```js
    // Token API
    const token = '6402342255:AAGF8UBcj7mPyaE8Fv_6rFlhIOc8Np1od3I';
    ```
    
    </td></tr></table><br>
   
13. Klik ``` Terapkan ``` -> ``` Deployment baru ``` -> Pilih jenis: ``` Aplikasi Web ```.<br><br>
14. Isi ``` Deskripsi ``` -> Pada bagian ``` Akses ```, silahkan pilih bagian: ``` siapa saja dapat mengakses ``` -> Terapkan.<br><br>
15. Meninjau izin -> Pilih ``` email anda ``` -> Lanjutkan -> Buka ``` proyek bot anda (tidak aman) ``` -> Izinkan.<br><br>
16. Salin ``` link web app URL ``` -> Tempelkan link tersebut pada bagian ``` let url ``` yang ada di ``` config.gs ``` seperti berikut :
    <table><tr><td width="810">
       
    ```js
    let url = 'https://api.telegram.org/bot1164101112:AA1BC1DI/setwebhook?url=https://script.google.com/macros/s/AKfycbyKodePanjang/exec';
    ```

    </td></tr></table><br>

17. Pastikan fungsi yang sedang dijalankan adalah ``` setWebHook ``` -> Klik ``` Jalankan ```.

    Akan dianggap berhasil jika ``` log eksekusi ``` bertuliskan: ``` Info {ok=true, description=Webhook is already set, result=true} ```.<br><br>
18. Selamat menikmati [Selesai].

<br><br>

## Sorotan
<table>
<tr>
<th colspan="4">RFID</th>
</tr>
<tr>
<td width="210"><img src="Assets/documentation/RFID View-1.jpg" alt="rfid-1"></td>
<td width="210"><img src="Assets/documentation/RFID View-2.jpg" alt="rfid-2"></td>
<td width="210"><img src="Assets/documentation/RFID View-3.jpg" alt="rfid-3"></td>
<td width="210"><img src="Assets/documentation/RFID View-4.jpg" alt="rfid-4"></td>
</tr>
<tr>
<td width="210"><img src="Assets/documentation/RFID View-5.jpg" alt="rfid-5"></td>
<td width="210"><img src="Assets/documentation/RFID View-6.jpg" alt="rfid-6"></td>
<td width="210"><img src="Assets/documentation/RFID View-7.jpg" alt="rfid-7"></td>
<td width="210"><img src="Assets/documentation/RFID View-8.jpg" alt="rfid-8"></td>
</tr>
</table>
<table>
<tr>
<th colspan="2">Basis Data</th>
</tr>
<tr>
<td width="420"><img src="Assets/documentation/Database View-1.jpg" alt="db-1"></td>
<td width="420"><img src="Assets/documentation/Database View-2.jpg" alt="db-2"></td>
</tr>
</table>
<table>
<tr>
<th colspan="2">Bot Telegram</th>
</tr>
<tr>
<td width="420"><img src="Assets/documentation/Telegram Bot View-1.jpg" alt="telegram-bot-1"></td>
<td width="420"><img src="Assets/documentation/Telegram Bot View-2.jpg" alt="telegram-bot-2"></td>
</tr>
</table>

<br><br>

## Pengingat
<table><tr><td width="840">
<strong>Kekurangan:</strong>

1. Kontrol error basis data pada aplikasi VB 6 masih belum bekerja dengan baik (masih ada bug di dalamnya).

2. SQL Cloud yang digunakan tergolong gratis, jadi ada banyak keterbatasan (tidak leluasa dalam praktiknya).

3. Masih terkendala di bagian perulangan data kehadiran, sehingga data yang masuk hanya indeks awal saja.

</td></tr></table>

<br><br>

## Demonstrasi Aplikasi
Via Telegram: <a href="http://t.me/simonsen_bot">@simonsen_bot</a>

<br><br>

## Apresiasi
Jika karya ini bermanfaat bagi anda, maka dukunglah karya ini sebagai bentuk apresiasi kepada penulis dengan mengklik tombol ``` ⭐Bintang ``` di bagian atas repositori.

<br><br>

## Penafian
Aplikasi ini merupakan hasil karya saya sendiri dan bukan merupakan hasil plagiat dari penelitian atau karya orang lain, kecuali yang berkaitan dengan layanan pihak ketiga yang meliputi: pustaka, kerangka kerja, dan lain sebagainya.

<br><br>

## LISENSI 
LISENSI MIT - Hak Cipta © 2020 - Devan C. M. Wijaya

Dengan ini diberikan izin tanpa biaya kepada siapa pun yang mendapatkan salinan perangkat lunak ini dan file dokumentasi terkait perangkat lunak untuk menggunakannya tanpa batasan, termasuk namun tidak terbatas pada hak untuk menggunakan, menyalin, memodifikasi, menggabungkan, mempublikasikan, mendistribusikan, mensublisensikan, dan/atau menjual salinan Perangkat Lunak ini, dan mengizinkan orang yang menerima Perangkat Lunak ini untuk dilengkapi dengan persyaratan berikut:

Pemberitahuan hak cipta di atas dan pemberitahuan izin ini harus menyertai semua salinan atau bagian penting dari Perangkat Lunak.

DALAM HAL APAPUN, PENULIS ATAU PEMEGANG HAK CIPTA DI SINI TETAP MEMILIKI HAK KEPEMILIKAN PENUH. PERANGKAT LUNAK INI DISEDIAKAN SEBAGAIMANA ADANYA, TANPA JAMINAN APAPUN, BAIK TERSURAT MAUPUN TERSIRAT, OLEH KARENA ITU JIKA TERJADI KERUSAKAN, KEHILANGAN, ATAU LAINNYA YANG TIMBUL DARI PENGGUNAAN ATAU URUSAN LAIN DALAM PERANGKAT LUNAK INI, PENULIS ATAU PEMEGANG HAK CIPTA TIDAK BERTANGGUNG JAWAB, KARENA PENGGUNAAN PERANGKAT LUNAK INI TIDAK DIPAKSAKAN SAMA SEKALI, SEHINGGA RISIKO ADALAH MILIK ANDA SENDIRI.
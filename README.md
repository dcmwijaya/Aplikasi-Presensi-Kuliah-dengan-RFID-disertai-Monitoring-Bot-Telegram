[![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.svg?style=flat)](https://github.com/ellerbrock/open-source-badges/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg?logo=github&color=%23F7DF1E)](https://opensource.org/licenses/MIT)
![GitHub last commit](https://img.shields.io/github/last-commit/devancakra/Aplikasi-Presensi-Kuliah-dengan-RFID-disertai-Monitoring-Bot-Telegram?logo=Codeforces&logoColor=white&color=%23F7DF1E)
![Project](https://img.shields.io/badge/Project-Multi-%2DPlatform-light.svg?style=flat&logo=googlechrome&logoColor=white&color=%23F7DF1E)
![Type](https://img.shields.io/badge/Type-Campus%20Assignment-light.svg?style=flat&logo=gitbook&logoColor=white&color=%23F7DF1E)

# Aplikasi-Presensi-Kuliah-dengan-RFID-disertai-Monitoring-Bot-Telegram
<strong>3rd Final Project in API Programming</strong><br><br>
This Telegram-based ChatBot is built on the ``` Google App Scripts ``` platform using ``` Javascript ``` as the programming language. The framework used is <b><a href="https://lumpia.js.org/">Lumpia.js</a></b>. The purpose of this bot is to monitor lecture attendance data. While this RFID application is made by programmers to be able to help someone in filling the college attendance quickly and precisely. This RFID application is built with ``` Visual Basic 6 ``` programming language.

<br><br>

## Project Requirements
| Part | Description |
| --- | --- |
| Features | Reply Keyboard, Error Handling, User Log Activity, Attendance Data Monitoring, & Auto Input Data |
| Platform | Google Apps Script & Freemysqlhosting |
| Tools | Microsoft Visual Basic 6.0 Enterprise |
| Function VB 6 | keybd_event & Sleep |
| Framework | Lumpia.js |
| Code | JavaScript, Visual Basic 6 |
| Operation System | Windows 10 |

<br><br>

## Download & Install Visual Basic 6.0 Enterprise
<table><tr><td width="840">
  
```
https://bit.ly/VisualBasic6_Installer
```

</td></tr></table>

<br><br>

## Get Started
1. Go to the site: ``` https://www.freemysqlhosting.net/ ``` -> ``` Register for an account ``` -> ``` Login ```.<br><br>
2. Download & Extract this repository.<br><br>
3. Import sql file in the directory: ``` Aplikasi-Presensi-Kuliah-dengan-RFID-disertai-Monitoring-Bot-Telegram\Assets\database\rfid_bot.sql ```.<br><br>
4. Open the directory: ``` Aplikasi-Presensi-Kuliah-dengan-RFID-disertai-Monitoring-Bot-Telegram\Src\RFID\Aplikasi RFID Presensi Bot Pintar.vbp ```, then find the modules section, please click ``` Module2 (Module2.bas) ```.<br><br>
5. Fill in the ``` dbName ```, ``` dbUser ```, ``` password ``` sections according to your SQL Cloud.<br><br>
   <img width="810" src="Assets/documentation/Database Connection.jpg" alt="db-connection"><br><br>
6. Open ``` Module3 (Module3.bas) ```, then fill in the ``` RFID Card Code ```, ``` Telegram ID ```, and ``` Telegram Username ``` sections.<br><br>
   <img width="810" src="Assets/documentation/Member Account.jpg" alt="member-account"><br><br>
   The addition of this data is done manually, so if there are more than 2 users then the source code needs to be adjusted again.<br><br>
7. Create a new project first on the platform: ``` Google apps script ```.<br><br>
8. Add ``` new file ``` on the platform ``` Google apps script ``` and regarding ``` file name ``` or ``` number of files ``` can be different according to your own creation, because this will not affect the performance of the bot system -> then don't forget to click ``` Save ```.<br><br>
9. Open the directory: ``` Aplikasi-Presensi-Kuliah-dengan-RFID-disertai-Monitoring-Bot-Telegram\Src\BOT\ ``` -> Copy & paste the entire contents into the file available on the platform ``` Google apps script ```.<br><br>
10. Enter the ``` Library ID ``` in the ``` Library ``` section:
    <table><tr><td width="810">
       
    ```js
    1Yo6vQRwjG5Gl9jeEF0g2tBTUa0XN5MyT4G_HeDpRr9DvabxhRcSdhPNj
    ```

    </td></tr></table><br>
   
11. Add ``` the library ``` -> Always select ``` the highest version of the library ``` -> Save.<br><br>
12. Paste the ``` API bot token telegram ``` that you have obtained from ``` @BotFather ``` as follows :
    <table><tr><td width="810">
       
    ```js
    // Token API
    const token = '6402342255:AAGF8UBcj7mPyaE8Fv_6rFlhIOc8Np1od3I';
    ```
    
    </td></tr></table><br>
   
13. Click ``` Apply ``` -> ``` New deployment ``` -> Select type: ``` Web Application ```.<br><br>
14. Contents ``` Description ``` -> In the ``` Access ``` section, please select the section: ``` anyone can access ``` -> Apply.<br><br>
15. Review permissions -> Select ``` your email ``` -> Continue -> Open ``` your bot project (not secure) ``` -> Allow.<br><br>
16. Copy the ``` web app URL link ``` -> Paste the link into the ``` let url ``` section in ``` config.gs ``` as follows:
    <table><tr><td width="810">
       
    ```js
    let url = 'https://api.telegram.org/bot1164101112:AA1BC1DI/setwebhook?url=https://script.google.com/macros/s/AKfycbyKodePanjang/exec';
    ```

    </td></tr></table><br>

18. Make sure the function being executed is ``` setWebHook ``` -> Click ``` Run ```.

    Will be considered successful if the ``` execution log ``` reads: ``` Info {ok=true, description=Webhook is already set, result=true} ```.<br><br>
19. Please enjoy [Done].

<br><br>

## Highlights
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
<th colspan="2">Database</th>
</tr>
<tr>
<td width="420"><img src="Assets/documentation/Database View-1.jpg" alt="db-1"></td>
<td width="420"><img src="Assets/documentation/Database View-2.jpg" alt="db-2"></td>
</tr>
</table>
<table>
<tr>
<th colspan="2">Telegram Bot</th>
</tr>
<tr>
<td width="420"><img src="Assets/documentation/Telegram Bot View-1.jpg" alt="telegram-bot-1"></td>
<td width="420"><img src="Assets/documentation/Telegram Bot View-2.jpg" alt="telegram-bot-2"></td>
</tr>
</table>

<br><br>

## Reminder
<table><tr><td width="840">
<strong>Disadvantages:</strong>

1. The database error control in the VB 6 application is still not working properly (there are still bugs in it).

2. The SQL Cloud used is fairly free, so there are many limitations (not free in practice).

3. Still constrained in the presence data loop, so that the data entered is only the initial index.

</td></tr></table>

<br><br>

## Demonstration of Application
Via Telegram: <a href="http://t.me/simonsen_bot">@simonsen_bot</a>

<br><br>

## Appreciation
If this work is useful to you, then support this work as a form of appreciation to the author by clicking the ``` ⭐Star ``` button at the top of the repository.

<br><br>

## Disclaimer
This application is my own work and is not the result of plagiarism from other people's research or work, except those related to third party services which include: libraries, frameworks, and so on.

<br><br>

## LICENSE
MIT License - Copyright © 2020 - Devan C. M. Wijaya

Permission is hereby granted without charge to any person obtaining a copy of this software and the software-related documentation files to deal in them without restriction, including without limitation the right to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons receiving the Software to be furnished therewith on the following terms:

The above copyright notice and this permission notice must accompany all copies or substantial portions of the Software.

IN ANY EVENT, THE AUTHOR OR COPYRIGHT HOLDER HEREIN RETAINS FULL OWNERSHIP RIGHTS. THE SOFTWARE IS PROVIDED AS IS, WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED, THEREFORE IF ANY DAMAGE, LOSS, OR OTHERWISE ARISES FROM THE USE OR OTHER DEALINGS IN THE SOFTWARE, THE AUTHOR OR COPYRIGHT HOLDER SHALL NOT BE LIABLE, AS THE USE OF THE SOFTWARE IS NOT COMPELLED AT ALL, SO THE RISK IS YOUR OWN.
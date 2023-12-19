[![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.svg?style=flat)](https://github.com/ellerbrock/open-source-badges/)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)
![GitHub last commit](https://img.shields.io/github/last-commit/devancakra/Aplikasi-Presensi-Kuliah-dengan-RFID-disertai-Monitoring-Bot-Telegram)
![JS](https://img.shields.io/badge/javascript%20-%23323330.svg?&style=flat&logo=javascript&logoColor=%23F7DF1E)
![VBA](https://img.shields.io/badge/Visual%20Basic-%23323330.svg?&style=flat&logo=visualbasic&logoColor=%23F7DF1E)

# Aplikasi-Presensi-Kuliah-dengan-RFID-disertai-Monitoring-Bot-Telegram
<strong>Final Project 3 API Programming Class</strong><br>
This Telegram-based ChatBot is built on the ``` Google App Scripts ``` platform using ``` Javascript ``` as the programming language. The framework used is <b><a href="https://lumpia.js.org/">Lumpia.js</a></b>. The purpose of this bot is to monitor lecture attendance data. While this RFID application is made by programmers to be able to help someone in filling the college attendance quickly and precisely. This RFID application is built with ``` Visual Basic 6 ``` programming language.

<br><br>

## Features / Framework / Tools
| Part | Description |
| --- | --- |
| Features | Custom Keyboard, Error Handling, User Log Activity, Attendance Data Monitoring, & Auto Input Data |
| Platform | Google Apps Script & Freemysqlhosting |
| Tools | Microsoft Visual Basic 6.0 Enterprise |
| Function VB 6 | keybd_event & Sleep |
| Framework | Lumpia.js |
| Code | JavaScript, Visual Basic 6 |
| Operation System | Windows 10 |

<br><br>

## Download & Install Visual Basic 6.0 Enterprise

   ```
   https://bit.ly/Installer_MS_VB6
   ```

<br><br>

## Get Started
1. Go to the site: ``` https://www.freemysqlhosting.net/ ``` -> ``` Register for an account ``` -> ``` Login ```.<br><br>
2. Import sql file in the directory: ``` Aplikasi-Presensi-Kuliah-dengan-RFID-disertai-Monitoring-Bot-Telegram\Assets\database\rfid_bot.sql ```.<br><br>
3. Download & Extract this repository.<br><br>
4. Open the directory: ``` Aplikasi-Presensi-Kuliah-dengan-RFID-disertai-Monitoring-Bot-Telegram\Src\RFID\Aplikasi RFID Presensi Bot Pintar.vbp ```, then find the modules section, please click ``` Module2 (Module2.bas) ```.<br><br>
5. Fill in the ``` dbName ```, ``` dbUser ```, ``` password ``` sections according to your SQL Cloud.<br><br>
   <img alt="module2" src="https://github.com/devancakra/Aplikasi-Presensi-Kuliah-dengan-RFID-disertai-Monitoring-Bot-Telegram/assets/54527592/0ae00f80-3f3f-4327-88f6-521a2a6c486a"><br><br>
6. Open ``` Module3 (Module3.bas) ```, then fill in the ``` Telegram ID and Username ``` sections.<br><br>
   <img alt="module3" src="https://github.com/devancakra/Aplikasi-Presensi-Kuliah-dengan-RFID-disertai-Monitoring-Bot-Telegram/assets/54527592/9cc11417-f11a-43e8-a54d-a9ef7f65ed06"><br><br>
   The addition of this data is done manually, so if there are more than 2 users then the source code needs to be adjusted again.<br><br>
7. Create a new project first on the platform: ``` Google apps script ```.<br><br>
8. Add ``` new file ``` on the platform ``` Google apps script ``` and regarding ``` file name ``` or ``` number of files ``` can be different according to your own creation, because this will not affect the performance of the bot system -> then don't forget to click ``` Save ```.<br><br>
9. Open the directory: ``` Aplikasi-Presensi-Kuliah-dengan-RFID-disertai-Monitoring-Bot-Telegram\Src\BOT\ ``` -> Copy & paste the entire contents into the file available on the platform ``` Google apps script ```.<br><br>
10. Enter the ``` Library ID ``` in the ``` Library ``` section:
    ```
    1Yo6vQRwjG5Gl9jeEF0g2tBTUa0XN5MyT4G_HeDpRr9DvabxhRcSdhPNj
    ```
    <br>
   
11. Add ``` the library ``` -> Always select ``` the highest version of the library ``` -> Save.<br><br>
12. Paste the ``` API bot token telegram ``` that you have obtained from ``` @BotFather ``` as follows :
    ```
    // Token API
    const token = '6402342255:AAGF8UBcj7mPyaE8Fv_6rFlhIOc8Np1od3I';
    ```
    <br>
   
13. Click ``` Apply ``` -> ``` New deployment ``` -> Select type: ``` Web Application ```.<br><br>
14. Contents ``` Description ``` -> In the ``` Access ``` section, please select the section: ``` anyone can access ``` -> Apply.<br><br>
15. Review permissions -> Select ``` your email ``` -> Continue -> Open ``` your bot project (not secure) ``` -> Allow.<br><br>
16. Copy the ``` web app URL link ``` -> Paste the link into the ``` let url ``` section in ``` config.gs ``` as follows:
    ```
    let url = 'https://api.telegram.org/bot1164101112:AA1BC1DI/setwebhook?url=https://script.google.com/macros/s/AKfycbyKodePanjang/exec';
    ```
    <br>

17. Make sure the function being executed is ``` setWebHook ``` -> Click ``` Run ```.

    Will be considered successful if the ``` execution log ``` reads: ``` Info {ok=true, description=Webhook is already set, result=true} ```.<br><br>
18. Please enjoy [Done].

<br><br>

## Highlights
<table>
<tr>
<th colspan="4">RFID</th>
</tr>
<tr>
<td width="210"><img src="https://github.com/devancakra/Aplikasi-Presensi-Kuliah-dengan-RFID-disertai-Monitoring-Bot-Telegram/assets/54527592/3104d093-1a5f-4446-9332-924c9b3779de" alt="IMG-1"></td>
<td width="210"><img src="https://github.com/devancakra/Aplikasi-Presensi-Kuliah-dengan-RFID-disertai-Monitoring-Bot-Telegram/assets/54527592/59ec6b59-c0e1-42fa-80da-0924518c6e7d" alt="IMG-2"></td>
<td width="210"><img src="https://github.com/devancakra/Aplikasi-Presensi-Kuliah-dengan-RFID-disertai-Monitoring-Bot-Telegram/assets/54527592/7d123e05-c220-4a24-b61f-c235481bdd33" alt="IMG-3"></td>
<td width="210"><img src="https://github.com/devancakra/Aplikasi-Presensi-Kuliah-dengan-RFID-disertai-Monitoring-Bot-Telegram/assets/54527592/2200fb7e-a5ba-4a53-8d52-1661494cbda7" alt="IMG-4"></td>
</tr>
<tr>
<td width="210"><img src="https://github.com/devancakra/Aplikasi-Presensi-Kuliah-dengan-RFID-disertai-Monitoring-Bot-Telegram/assets/54527592/52bb9edd-12c0-403f-abcc-ced57387cb71" alt="IMG-5"></td>
<td width="210"><img src="https://github.com/devancakra/Aplikasi-Presensi-Kuliah-dengan-RFID-disertai-Monitoring-Bot-Telegram/assets/54527592/d8e0d62d-35a9-4903-94b3-a17f39e300a3" alt="IMG-6"></td>
<td width="210"><img src="https://github.com/devancakra/Aplikasi-Presensi-Kuliah-dengan-RFID-disertai-Monitoring-Bot-Telegram/assets/54527592/a740dfc4-6aa7-46a5-8fe4-4cef930e826d" alt="IMG-7"></td>
<td width="210"><img src="https://github.com/devancakra/Aplikasi-Presensi-Kuliah-dengan-RFID-disertai-Monitoring-Bot-Telegram/assets/54527592/7a96db25-64a0-4fa8-84b8-39e0ca80030b" alt="IMG-8"></td>
</tr>
</table>
<table>
<tr>
<th colspan="2">Database</th>
</tr>
<tr>
<td width="420"><img src="https://github.com/devancakra/Aplikasi-Presensi-Kuliah-dengan-RFID-disertai-Monitoring-Bot-Telegram/assets/54527592/1e3f5202-fd3a-4b1a-8d3a-881b3b97d377" alt="IMG-7"></td>
<td width="420"><img src="https://github.com/devancakra/Aplikasi-Presensi-Kuliah-dengan-RFID-disertai-Monitoring-Bot-Telegram/assets/54527592/898a4826-4935-488e-87f1-e7dd8b70198a" alt="IMG-8"></td>
</tr>
</table>
<table>
<tr>
<th colspan="2">Telegram Bot</th>
</tr>
<tr>
<td width="420"><img src="https://github.com/devancakra/Aplikasi-Presensi-Kuliah-dengan-RFID-disertai-Monitoring-Bot-Telegram/assets/54527592/1870ec0a-051e-41f5-bcb6-3b9354b68021" alt="IMG-9"></td>
<td width="420"><img src="" alt="IMG-10"></td>
</tr>
</table>

<br><br>

## Reminder
Disadvantages:
1. The database error control in the VB 6 application is still not working properly (there are still bugs in it).

2. The SQL Cloud used is fairly free, so there are many limitations (not free in practice).

3. Still constrained in the presence data loop, so that the data entered is only the initial index.

<br><br>

## Demonstration of Application
Via Telegram: <a href="http://t.me/simonsen_bot">@simonsen_bot</a>

<br><br>

## Disclaimer
This application has been created by including third-party sources. Third parties here are service providers, whose services are in the form of libraries, frameworks, and others. I thank you very much for the service. It has proven to be very helpful and implementable.

<br><br>

## LICENSE
MIT License - Copyright (c) 2020 - Devan Cakra Mudra Wijaya

Permission is hereby granted without charge to any person obtaining a copy of this software and the software-related documentation files to deal in them without restriction, including without limitation the right to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons receiving the Software to be furnished therewith on the following terms:

The above copyright notice and this permission notice must accompany all copies or substantial portions of the Software.

IN ANY EVENT, THE AUTHOR OR COPYRIGHT HOLDER HEREIN RETAINS FULL OWNERSHIP RIGHTS. THE SOFTWARE IS PROVIDED AS IS, WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED, THEREFORE IF ANY DAMAGE, LOSS, OR OTHERWISE ARISES FROM THE USE OR OTHER DEALINGS IN THE SOFTWARE, THE AUTHOR OR COPYRIGHT HOLDER SHALL NOT BE LIABLE, AS THE USE OF THE SOFTWARE IS NOT COMPELLED AT ALL, SO THE RISK IS YOUR OWN.

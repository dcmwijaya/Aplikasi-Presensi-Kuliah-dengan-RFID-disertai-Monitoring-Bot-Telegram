// Token API
const token = '6402342255:AAGF8UBcj7mPyaE8Fv_6rFlhIOc8Np1od3I';


// Bot telegram
const bot = new lumpia.init(token);


// Handle komunikasi via POST dari Telegram ke (webhook) GAS
function doPost(e) {
  bot.doPost(e);
}


// Bagian ini untuk mengatur WebHook
function setWebHook() {
  let url = 'WEB URL DEPLOY ANDA';
  let result = bot.tg.setWebhook(url);
  Logger.log(result);
}


// Mode development: OFF
lumpia.verbose = false;


// Chat id admin bot
const admin_bot = 'CHAT ID USER TELEGRAM';


// Username bot
const username_bot = 'simonsen_bot';


// Keyboard
const markup = lumpia.markup;


// Pewaktuan
let date = new Date();
let waktu = Utilities.formatDate(date, 'Asia/Jakarta', 'yyyy/MM/dd , HH:mm:ss');


// Database configuration
var server = 'sql12.freemysqlhosting.net';
var dbName = "DB_NAME";
var dbUser = "DB_USER";
var password = "PASSWORD";
var port = '3306';
var url = 'jdbc:mysql://'+server+':'+port+'/'+dbName;
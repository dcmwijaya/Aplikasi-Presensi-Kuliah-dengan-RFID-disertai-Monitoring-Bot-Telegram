// masukkan token bot mu di sini
var token = 'Token_API_BOT_Anda';

// buat objek baru kita kasih nama tg
var tg = new telegram.daftar(token);

// fungsi buat handle hanya menerima pesan berupa POST, kalau GET keluarkan pesan error
function doGet(e) {
  return HtmlService.createHtmlOutput("Hanya data POST yang kita proses yak!");
}

// fungsi buat handle pesan POST
function doPost(e) {

  // Memastikan pesan yang diterima hanya dalam format JSON  
  if(e.postData.type == "application/json") {
    
    // Kita parsing data yang masuk
    var update = JSON.parse(e.postData.contents);
    
    // Jika data pesan update valid, kita proses
    if (update) {
      prosesPesan(update);
    }
  } 
}

// fungsi utama kita buat handle segala pesan
function prosesPesan(update) {
    
  // detek klo ada pesan dari user
  if (update.message) { 
    
    // penyederhanaan variable
    var msg = update.message;

    // jika ada pesan berupa text
    if (msg.text) {
      // Menu
      let menu = msg.text;
      
      // Setting id, nama, & username
      let id = msg.from.id;
      let nama = msg.from.first_name;
      if (msg.from.last_name) { 
        nama += " " + msg.from.last_name;
      }
      let username = msg.from.username;  
      
      // Setting waktu
      let dt = new Date(); 
      let timeStamp = dt.getTime();
      let time = timeConverter(msg.date, true);
      
      // Notifikasi pengakses
      let user1 = msg.message_id;
      let user2 = msg.message_id;
      user1 = "ID_TELEGRAM_USER1";
      user2 = "ID_TELEGRAM_USER2"; 
      
      // Database Configuration
      var server = 'sql12.freemysqlhosting.net';
      var dbName = "DB_NAME";
      var dbUser = "DB_USER";
      var password = "PASSWORD";
      var port = '3306';
      var url = 'jdbc:mysql://'+server+':'+port+'/'+dbName;
      var conn = Jdbc.getConnection(url,dbUser,password);
      var cs = conn.createStatement();
      
      //Insert DB Pengakses
      let val1 = " "+id;
      let val2 = "'"+nama+"'";
      
      let notif = "⚠️ Ada yang mengakses bot anda ❗\n\n🆔 ID = "+id+"\n🕵️‍♂️ Nama : "+nama+"\n👨🏻‍🎓 Username : @" +username+"\n\nSedang mengakses menu <b>"+menu+"</b> pada tanggal <b>"+time+"</b>";

      // eh ini saya tambahkan lagi, jika user klik start
      if ( /^\/start$/i.exec(msg.text) ){
        // pesan buat dikirim
        let pesan = "👋 Selamat Datang <b>"+nama+"</b> di bot 🕵️‍♂️ <b>ARVATAR (Aplikasi RFID VB Absen Bot Pintar)</b>";
        pesan +="\n\n🆔 ID anda = "+id;
        pesan +="\n👨🏻‍🎓 Username anda = @"+username;
      
        pesan +="\n\nSilahkan pilih menu dibawah!!";
      
        // Menu Keyboard
        let keyboard = [
          ['📈 Data Absensi']
        ]              
      
        // Return Value
        return sendMsgKeyboard(msg.chat.id, pesan, keyboard) & tg.kirimPesan(user1, notif, 'HTML') & tg.kirimPesan(user2, notif, 'HTML')
      }
    
      if ( /^📈 Data Absensi$/i.exec(msg.text) ){
        // Query select
        var qs = 'SELECT * FROM umum WHERE umum.id_telegram='+id+';';
        var SQ = cs.executeQuery(qs);
        var metaData = SQ.getMetaData();
        var column = metaData.getColumnCount();
           
        if(SQ != null){  
          // Pemanggilan data query
          for(i=1; i<=column; i++){
            while(SQ.next()){
              var dtq1 = SQ.getInt('no');
              var dtq2 = SQ.getInt('kode_rfid');
              var dtq3 = SQ.getInt('id_telegram');
              var dtq4 = SQ.getString('namauser');
              var dtq5 = SQ.getString('waktu');
              var dtq6 = SQ.getString('matakuliah');
                 
              // Pesan
              let pesan = "🙋‍♂️️<b>️[ Preview Absensi ]</b>💁‍♂️\n";
              Utilities.sleep(50); // Delay
              pesan += "\nNo : "+dtq1+"\nKode RFID : "+dtq2+"\nId telegram : "+dtq3+"\nNama : "+dtq4+"\nAbsen pada : "+dtq5+"\nAbsen MK : "+dtq6;
               
              // Return Value
              return tg.kirimPesan(msg.chat.id, pesan, 'HTML') & tg.kirimPesan(user1, notif, 'HTML') & tg.kirimPesan(user2, notif, 'HTML');
              }
            }  
           }  
           if(SQ != id){
             // Pesan
             let pesan = "🙋‍♂️️<b>️[ Preview Absensi ]</b>💁‍♂️\n\nData tidak ditemukan (kosong), silahkan melakukan absensi terlebih dahulu menggunakan RFID Card!";
             Utilities.sleep(20); // Delay
               
             // Return Value
             return tg.kirimPesan(msg.chat.id, pesan, 'HTML') & tg.kirimPesan(user1, notif, 'HTML') & tg.kirimPesan(user2, notif, 'HTML');
           }
         }
    }
  }
}
     
// Fungsi keyboard
function sendMsgKeyboard(chatid, pesan, keyboard) {
  let data = {
        chat_id : chatid,
        text: pesan,
        parse_mode : 'HTML',
        reply_markup: {
            resize_keyboard: true,
            one_time_keyboard: true,
            keyboard: keyboard
        }
      }
 let r = tg.request('sendMessage', data);
 return r;  
}

// Fungsi time
function timeConverter(UNIX_timestamp, ribuan){
  ribuan = (typeof ribuan == 'undefined') ? false : true;

  let a = new Date(UNIX_timestamp);
  if (ribuan) {
    a = new Date(UNIX_timestamp * 1000);
  }
 
  //buat index bulan
  var months = ['Januari','Februari','Maret','April','Mei','Juni','Juli','Agustus','September','Oktober','Nopember','Desember'];

  // ambil pecahan waktu masing-masing
  var year = a.getFullYear();
  var month = months[a.getMonth()];
  var date = a.getDate();
  var hour = a.getHours();
  var min = a.getMinutes();
  var sec = a.getSeconds();

  // gabungkan ke dalam variable time
  var time = date + ' ' + month + ' ' + year + ' (' + hour + ':' + min + ':' + sec + ')' ;
  return time;
}

// Fungsi keyboard inline
function sendMsgKeyboardInline(chatid, pesan, keyboard) {
  let data = {
        chat_id : chatid,
        text: pesan,
        parse_mode : 'HTML',
        reply_markup: {
            inline_keyboard: keyboard
        }
      }
 let r = tg.request('sendMessage', data);
 return r;  
}
                           
// Isi dengan web App URL yang di dapat saat deploy
var webAppUrl = "WebAppURL_Anda";

function setWebHook() {
  var result = tg.request('setWebhook', {
    url: webAppUrl
  });
  Logger.log(result);
}
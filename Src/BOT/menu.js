// Bagian yang menangani keseluruhan menu
bot.on('message', ctx => {
  // Data akses
  let user_id = ctx.from.id; let user = ctx.from.username;
  let name = ctx.from.first_name; if (ctx.from.last_name) { name += ' ' + ctx.from.last_name; }
  
  // Notifikasi pengakses
  let pvmsg = '\n---------------------------------------------------------\n⚠️ <b>'+username_bot+'</b> ada yang akses ❗\n---------------------------------------------------------\n\n🆔 ID : '+user_id+'\n🕵️‍♂️ Nama : '+name+'\n👨🏻‍🎓 Username : @'+user+'\n⏰ Date : '+waktu;

  // Database configuration
  let server = 'sql12.freemysqlhosting.net';
  let port = '3306';
  let dbName = "DB_NAME";
  let dbUser = "DB_USER";
  let dbPassword = "DB_PASSWORD";
  let url = 'jdbc:mysql://'+server+':'+port+'/'+dbName;
  let conn = Jdbc.getConnection(url, dbUser, dbPassword);
  let cs = conn.createStatement();

  // Command text
  let cmd = ctx.message.text;

  if (cmd === '/start') { // Menu start
    // Keterangan menu
    let menu = 'start'; pvmsg += '\n📁 Akses menu : '+menu+'\n\n---------------------------------------------------------';

    // Pesan
    let msg = '\n---------------------------------------------------------\n👋 Selamat Datang <b>'+name+'</b> 👋\ndi layanan 🤖 <b>Bot SIMONSEN</b> 🤖\n---------------------------------------------------------'+'\n\n<b>[ Keterangan ] :</b>\n\nAplikasi ini digunakan untuk monitoring data presensi kuliah.\n\n---------------------------------------------------------\n👇 Silakan pilih menu di bawah ini 👇\n---------------------------------------------------------';

    // Custom keyboard
    let custom_Keyboard = [
      ['📈 Data Presensi']
    ];

    // Output yang dikirim oleh bot
    ctx.tg.sendMessage(admin_bot, pvmsg, {'parse_mode': 'HTML'}) & ctx.replyWithHTML(msg,{ reply_markup: markup.keyboard(custom_Keyboard).resize() });
  } 
  else if (cmd === '📈 Data Presensi') { // Menu presensi
    // Keterangan menu
    let menu = 'Data Presensi'; pvmsg += '\n📁 Akses menu : '+menu+'\n\n---------------------------------------------------------';

    // Query select
    let qs = 'SELECT * FROM umum WHERE umum.id_telegram='+user_id+';';
    let SQ = cs.executeQuery(qs);
    let metaData = SQ.getMetaData();
    let column = metaData.getColumnCount();
    
    // Jika data ditemukan, maka tampilkan melalui chatbot
    if(SQ != null){  
      // Pemanggilan data query
      for(i=1; i<=column; i++){
        while(SQ.next()){
          // Data column
          let dtq1 = SQ.getInt('no');
          let dtq2 = SQ.getString('kode_rfid');
          let dtq3 = SQ.getString('id_telegram');
          let dtq4 = SQ.getString('namauser');
          let dtq5 = SQ.getString('waktu');
          let dtq6 = SQ.getString('matakuliah');
            
          // Pesan
          let msg = '\n---------------------------------------------------------\n🙋‍♂️️ <b>Data Presensi Kuliah</b> 💁‍♂️';
          msg += '\n---------------------------------------------------------\n\n📌 No : '+dtq1+'\n💳 Kode RFID : '+dtq2+'\n🆔 Id telegram : '+dtq3+'\n🕵️‍♂️ Nama : '+dtq4+'\n⏰ Absen pada : '+dtq5+'\n📑 Absen MK : '+dtq6+'\n\n---------------------------------------------------------';

          // Delay
          Utilities.sleep(50);

          // Output yang dikirim oleh bot
          ctx.tg.sendMessage(admin_bot, pvmsg, {'parse_mode': 'HTML'}) & ctx.replyWithHTML(msg);
        }
      }
    }

    // Jika data tidak ditemukan, maka tampilkan melalui chatbot
    if(SQ != id){
      // Pesan
      let msg = '\n---------------------------------------------------------\n🙋‍♂️️ <b>Data Presensi Kuliah</b> 💁‍♂️\n---------------------------------------------------------\n\nData tidak ditemukan (kosong), silakan melakukan absensi terlebih dahulu menggunakan RFID Card!\n\n---------------------------------------------------------';

      // Delay
      Utilities.sleep(20);
      
      // Output yang dikirim oleh bot
      ctx.tg.sendMessage(admin_bot, pvmsg, {'parse_mode': 'HTML'}) & ctx.replyWithHTML(msg);
    }
  }
  else { // Control handling menu
    ctx.replyWithHTML('⛔ <b>[ Error ]</b> Menu tidak tersedia!');
  }
});
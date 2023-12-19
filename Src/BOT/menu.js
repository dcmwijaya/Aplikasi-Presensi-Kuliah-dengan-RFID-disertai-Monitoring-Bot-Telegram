// Bagian yang menangani keseluruhan menu
bot.on('message', ctx => {
  // Data akses
  let user_id = ctx.from.id; let user = ctx.from.username;
  let name = ctx.from.first_name; if (ctx.from.last_name) { name += ' ' + ctx.from.last_name; }
  
  // Notifikasi pengakses
  let pvmsg = '\n---------------------------------------------------------\n⚠️ <b>'+username_bot+'</b> ada yang akses ❗\n---------------------------------------------------------\n\n🆔 ID : '+user_id+'\n🕵️‍♂️ Nama : '+name+'\n👨🏻‍🎓 Username : @'+user+'\n⏰ Date : '+waktu;

  // Command text
  let cmd = ctx.message.text;

  // Menu start
  if (cmd === '/start') {    
    // Keterangan menu
    let menu = 'start'; pvmsg += '\n📁 Akses menu : '+menu+'\n\n---------------------------------------------------------';

    // Pesan
    let msg = '\n---------------------------------------------------------\n👋 Selamat Datang <b>'+name+'</b> 👋\ndi layanan 🤖 <b>Bot SIMONSEN</b> 🤖\n---------------------------------------------------------'+'\n\n<b>[ Keterangan ] :</b>\n\nAplikasi ini digunakan untuk monitoring data presensi kuliah.\n\n---------------------------------------------------------\n👇 Silakan pilih menu di bawah ini 👇\n---------------------------------------------------------';

    let custom_Keyboard = [
      ['📈 Data Absensi']
    ];

    // Output yang dikirim oleh bot
    ctx.tg.sendMessage(admin_bot, pvmsg, {'parse_mode': 'HTML'}) & ctx.replyWithHTML(msg,{ reply_markup: markup.keyboard(custom_Keyboard).resize() });
  } 
  else if (cmd === '📈 Data Absensi') { // Menu jenis
    // Keterangan menu
    let menu = '📈 Data Absensi'; pvmsg += '\n📁 Akses menu : '+menu+'\n\n---------------------------------------------------------';

    // Database connection
    let conn = Jdbc.getConnection(url,dbUser,password);
    let cs = conn.createStatement();

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
          let dtq2 = SQ.getInt('kode_rfid');
          let dtq3 = SQ.getInt('id_telegram');
          let dtq4 = SQ.getString('namauser');
          let dtq5 = SQ.getString('waktu');
          let dtq6 = SQ.getString('matakuliah');
            
          // Pesan
          let pesan = '🙋‍♂️️<b>️[ Preview Absensi ]</b>💁‍♂️\n';
          pesan += '\nNo : '+dtq1+'\nKode RFID : '+dtq2+'\nId telegram : '+dtq3+'\nNama : '+dtq4+'\nAbsen pada : '+dtq5+'\nAbsen MK : '+dtq6;

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
      let msg = '🙋‍♂️️<b>[ Preview Absensi ]</b>💁‍♂️\n\nData tidak ditemukan (kosong), silakan melakukan absensi terlebih dahulu menggunakan RFID Card!';

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

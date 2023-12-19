// Bagian yang menangani keseluruhan menu
bot.on('message', ctx => {
  // Data akses
  let user_id = ctx.from.id; let user = ctx.from.username;
  let name = ctx.from.first_name; if (ctx.from.last_name) { name += ' ' + ctx.from.last_name; }
  
  // Notifikasi pengakses
  let pvmsg = '⚠️ Ada yang mengakses '+username_bot+' ❗\n\n🆔 ID : '+user_id+'\n🕵️‍♂️ Nama : '+name+'\n👨🏻‍🎓 Username : @'+user+'\n⏰ Date : '+waktu;

  // Command text
  let cmd = ctx.message.text;

  // Menu start
  if (cmd === '/start') {    
    // Keterangan menu
    let menu = 'start'; pvmsg += '\n📁 Akses menu : '+menu;

    // Pesan
    let msg = "👋 Selamat Datang <b>"+nama+"</b> di bot 🕵️‍♂️ <b>SIMONSEN (Aplikasi Monitoring Presensi)</b>";
    msg +="\n\n🆔 ID anda = "+id+"\n👨🏻‍🎓 Username anda = @"+username+"\n\nSilahkan pilih menu dibawah!!";

    // Output yang dikirim oleh bot
    ctx.replyWithHTML(msg,{ reply_markup: markup.keyboard(custom_Keyboard).resize() }) 
    & ctx.tg.sendMessage(admin_bot1, pvmsg) & ctx.tg.sendMessage(admin_bot2, pvmsg);
  } 
  else if (cmd === '📈 Data Absensi') { // Menu jenis
    // Keterangan menu
    let menu = '📈 Data Absensi'; pvmsg += '\n📁 Akses menu : '+menu;

    // Query select
    var qs = 'SELECT * FROM umum WHERE umum.id_telegram='+id+';';
    var SQ = cs.executeQuery(qs);
    var metaData = SQ.getMetaData();
    var column = metaData.getColumnCount();
      
    if(SQ != null){  
      // Pemanggilan data query
      for(i=1; i<=column; i++){
        while(SQ.next()){
          // Data column
          var dtq1 = SQ.getInt('no');
          var dtq2 = SQ.getInt('kode_rfid');
          var dtq3 = SQ.getInt('id_telegram');
          var dtq4 = SQ.getString('namauser');
          var dtq5 = SQ.getString('waktu');
          var dtq6 = SQ.getString('matakuliah');
            
          // Pesan
          let pesan = "🙋‍♂️️<b>️[ Preview Absensi ]</b>💁‍♂️\n";
          pesan += "\nNo : "+dtq1+"\nKode RFID : "+dtq2+"\nId telegram : "+dtq3+"\nNama : "+dtq4+"\nAbsen pada : "+dtq5+"\nAbsen MK : "+dtq6;

          // Delay
          Utilities.sleep(50);
          
          // Output yang dikirim oleh bot
          ctx.replyWithHTML(msg) & ctx.tg.sendMessage(admin_bot1, pvmsg) & ctx.tg.sendMessage(admin_bot2, pvmsg);
        }
      }
    }
    if(SQ != id){
      // Pesan
      let msg = "🙋‍♂️️<b>️[ Preview Absensi ]</b>💁‍♂️\n\nData tidak ditemukan (kosong), silahkan melakukan absensi terlebih dahulu menggunakan RFID Card!";

      // Delay
      Utilities.sleep(20);
        
      // Output yang dikirim oleh bot
      ctx.replyWithHTML(msg) & ctx.tg.sendMessage(admin_bot1, pvmsg) & ctx.tg.sendMessage(admin_bot2, pvmsg);
    }
  }
  else { // Control handling menu
    ctx.replyWithHTML('⛔ Menu yang anda pilih tidak tersedia, harap periksa kembali..');
  }
});
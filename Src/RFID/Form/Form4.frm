VERSION 5.00
Begin VB.Form Form4 
   BackColor       =   &H80000003&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "[Mata Kuliah Manajemen Keamanan TI] Aplikasi RFID Presensi Bot Pintar"
   ClientHeight    =   6900
   ClientLeft      =   45
   ClientTop       =   690
   ClientWidth     =   7245
   Icon            =   "Form4.frx":0000
   LinkTopic       =   "Form4"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "Form4.frx":10CA
   ScaleHeight     =   6900
   ScaleWidth      =   7245
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton Command1 
      BackColor       =   &H00C0FFC0&
      Caption         =   "SUBMIT"
      BeginProperty Font 
         Name            =   "Arial Rounded MT Bold"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   5160
      Picture         =   "Form4.frx":2957C
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   5640
      Width           =   1335
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "Arial Rounded MT Bold"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2055
      Left            =   960
      TabIndex        =   2
      Top             =   3240
      Width           =   5535
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "----------------------- [MK MKTI] -----------------------"
      BeginProperty Font 
         Name            =   "Arial Black"
         Size            =   12
         Charset         =   0
         Weight          =   900
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   495
      Index           =   2
      Left            =   480
      TabIndex        =   4
      Top             =   2160
      Width           =   6255
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Silahkan tempelkan kartu RFID !"
      BeginProperty Font 
         Name            =   "Arial Black"
         Size            =   12
         Charset         =   0
         Weight          =   900
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   735
      Index           =   1
      Left            =   480
      TabIndex        =   1
      Top             =   2640
      Width           =   6255
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "APLIKASI RFID PRESENSI BOT PINTAR"
      BeginProperty Font 
         Name            =   "Arial Black"
         Size            =   18
         Charset         =   0
         Weight          =   900
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   1095
      Left            =   1200
      TabIndex        =   0
      Top             =   600
      Width           =   4935
   End
   Begin VB.Menu Btm 
      Caption         =   "Back To Menu"
      Index           =   1
   End
   Begin VB.Menu Ext 
      Caption         =   "Exit"
      Index           =   2
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'============================================================================================'
'Library Event Keyboard'
'============================================================================================'
Private Declare Sub keybd_event Lib "user32.dll" (ByVal bVk As Byte, ByVal bScan As Byte, ByVal dwFlags As Long, ByVal dwExtraInfo As Long)
Private Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)



'============================================================================================'
'Cek Konfigurasi Database'
'============================================================================================'
Private Sub Form_Load()
    MsgBox "Tunggu sedang proses konfigurasi...", vbInformation, "System"
    
    On Error GoTo ErrKoneksi
        CN.CursorLocation = adUseClient
        CN.Mode = adModeReadWrite
        Call Conn
        MsgBox "Koneksi database Sukses !", vbInformation, "System"
    Exit Sub

ErrKoneksi:
    MsgBox "Koneksi database Error.. " & vbCrLf & Err.Description & Err.Number, vbCritical, "Error Koneksi Database"
End Sub



'============================================================================================'
'Trigger Event Keyboard Pada TextBoxt'
'============================================================================================'
Private Sub Text1_Change()
    'INSERT'
    keybd_event vbKeySelect, 0, 0, 0 'tekan'
    keybd_event vbKeySelect, 0, KEYEVENTF_KEYUP, 0 'lepas'
    Sleep (200)
    
    'TAB'
    keybd_event vbKeyTab, 0, 0, 0 'tekan'
    keybd_event vbKeyTab, 0, KEYEVENTF_KEYUP, 0 'tekan'
    Sleep (200)
    
    'ENTER'
    keybd_event vbKeyReturn, 0, 0, 0 'tekan'
    keybd_event vbKeyReturn, 0, KEYEVENTF_KEYUP, 0 'lepas'
    
    Text1.SetFocus 'Kursor Fokus Ke Textbox'
End Sub




'============================================================================================'
'Insert / Submit Data -> Database'
'============================================================================================'
Private Sub Command1_Click()
Dim sqlq1, sqlq2 As String
    
Call Conn
Call Akses

If Text1.Text = io.KD1 Then
    sqlq1 = "INSERT INTO umum VALUES ('','" & io.KD1 & "','" & io.TG1 & "','" & io.US1 & "',CURRENT_DATE(),'" & io.M3 & "')"
    CN.Execute sqlq1
    CN.Close
    Text1.SetFocus
    Text1.Text = ""
    MsgBox "Berhasil ditambahkan!", vbInformation, "System"
ElseIf Text1.Text = io.KD2 Then
    sqlq2 = "INSERT INTO umum VALUES ('','" & io.KD2 & "','" & io.TG2 & "','" & io.US2 & "',CURRENT_DATE(),'" & io.M3 & "')"
    CN.Execute sqlq2
    CN.Close
    Text1.SetFocus
    Text1.Text = ""
Else
    MsgBox "Ada Kesalahan!", vbCritical, "System"
    Text1.Text = ""
    Text1.SetFocus
End If
End Sub
           
           
'============================================================================================'
'Back To Menu'
'============================================================================================'
Private Sub Btm_Click(Index As Integer)
    Text1.Text = ""
    Form4.Hide
    Form1.Show
End Sub



'============================================================================================'
'Keluar Dari Aplikasi'
'============================================================================================'
Private Sub Ext_Click(Index As Integer)
Q = MsgBox("Anda yakin akan keluar ?", vbQuestion + vbOKCancel, "System")
    If Q = vbOK Then
        Unload Me
        End
    End If
End Sub

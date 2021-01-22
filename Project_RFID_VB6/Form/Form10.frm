VERSION 5.00
Begin VB.Form Form10 
   BackColor       =   &H80000003&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Program RFID Absensi Bot Pintar"
   ClientHeight    =   6900
   ClientLeft      =   45
   ClientTop       =   690
   ClientWidth     =   7245
   LinkTopic       =   "Form10"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "Form10.frx":0000
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
      Left            =   960
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   4920
      Width           =   5535
   End
   Begin VB.TextBox Text3 
      Height          =   405
      Left            =   960
      TabIndex        =   4
      Top             =   4320
      Width           =   5535
   End
   Begin VB.TextBox Text2 
      Height          =   405
      Left            =   960
      TabIndex        =   3
      Top             =   3480
      Width           =   5535
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   960
      TabIndex        =   2
      Top             =   2640
      Width           =   5535
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Masukkan Nama Anda :"
      BeginProperty Font 
         Name            =   "Arial Rounded MT Bold"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   2
      Left            =   960
      TabIndex        =   8
      Top             =   4080
      Width           =   2775
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Masukkan ID Telegram Anda :"
      BeginProperty Font 
         Name            =   "Arial Rounded MT Bold"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   1
      Left            =   960
      TabIndex        =   7
      Top             =   3240
      Width           =   2775
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Masukkan Kode RFID Anda :"
      BeginProperty Font 
         Name            =   "Arial Rounded MT Bold"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   0
      Left            =   960
      TabIndex        =   6
      Top             =   2400
      Width           =   2775
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "------------------ [DAFTAR BARU] ------------------"
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
      TabIndex        =   1
      Top             =   1800
      Width           =   6255
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "PROGRAM RFID ABSENSI BOT PINTAR"
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
      Left            =   1440
      TabIndex        =   0
      Top             =   600
      Width           =   4455
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
Attribute VB_Name = "Form10"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
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
    Exit Sub
End Sub



'============================================================================================'
'Daftar Pengguna Baru'
'============================================================================================'
Private Sub Command1_Click()
    Call Conn
    Dim DafBaru As String
    If Command1 = True Then
        DafBaru = "INSERT INTO pengguna VALUES ('" & Text1.Text & "','" & Text2.Text & "','" & Text3.Text & "',CURRENT_DATE())"
        CN.Execute DafBaru
        Text1.Text = ""
        Text2.Text = ""
        Text3.Text = ""
        Text1.SetFocus
        MsgBox "Data Berhasil Ditambahkan!", vbInformation, "System"
        MsgBox "Perhatikan data anda tidak dapat langsung dipakai! Admin segera membuat akses untuk anda", vbInformation, "System"
        CN.Close
    Else
        MsgBox "Ada Kesalahan!", vbCritical, "System"
        Text1.Text = ""
        Text2.Text = ""
        Text3.Text = ""
        Text1.SetFocus
    End If
End Sub
           
           
           
'============================================================================================'
'Back To Menu'
'============================================================================================'
Private Sub Btm_Click(Index As Integer)
    Text1.Text = ""
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

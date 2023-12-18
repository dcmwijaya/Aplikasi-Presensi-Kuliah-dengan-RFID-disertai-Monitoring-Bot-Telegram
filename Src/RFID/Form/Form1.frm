VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H80000003&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "[Beranda] Aplikasi RFID Presensi Bot Pintar"
   ClientHeight    =   6900
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   7245
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "Form1.frx":0000
   ScaleHeight     =   6900
   ScaleWidth      =   7245
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton Command2 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Pilih"
      BeginProperty Font 
         Name            =   "Arial Rounded MT Bold"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   3840
      Picture         =   "Form1.frx":284B2
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   5280
      Width           =   2295
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00FFFF80&
      Caption         =   "Daftar"
      Default         =   -1  'True
      BeginProperty Font 
         Name            =   "Arial Rounded MT Bold"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   1200
      Picture         =   "Form1.frx":2BA68
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   5280
      Width           =   2295
   End
   Begin VB.ComboBox Combo1 
      Height          =   330
      ItemData        =   "Form1.frx":2F0C4
      Left            =   1200
      List            =   "Form1.frx":2F0E0
      TabIndex        =   2
      Text            =   "------------------------ Silakan Pilih Mata Kuliah ------------------------"
      Top             =   2880
      Width           =   4935
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Pilihan Mata Kuliah"
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
      Top             =   2400
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
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'============================================================================================'
'Menu Peralihan ke Form Daftar'
'============================================================================================'
Private Sub Command1_Click()
    Form1.Hide
    Form10.Show
End Sub

'============================================================================================'
'Fungsi Pilih -> Alih Menu'
'============================================================================================'
Private Sub Command2_Click()
    If Combo1.Text = "PEMAPI" Then
        MsgBox "Anda dialihkan ke menu absen MK PEMAPI !", vbInformation, "System"
        Form1.Hide
        Form2.Show
        
    ElseIf Combo1.Text = "PEMWEB" Then
        MsgBox "Anda dialihkan ke menu absen MK PEMWEB !", vbInformation, "System"
        Form1.Hide
        Form3.Show
        
    ElseIf Combo1.Text = "MKTI" Then
        MsgBox "Anda dialihkan ke menu absen MK MKTI !", vbInformation, "System"
        Form1.Hide
        Form4.Show
        
    ElseIf Combo1.Text = "KWU" Then
        MsgBox "Anda dialihkan ke menu absen MK KWU !", vbInformation, "System"
        Form1.Hide
        Form5.Show
        
    ElseIf Combo1.Text = "KCB" Then
        MsgBox "Anda dialihkan ke menu absen MK KCB !", vbInformation, "System"
        Form1.Hide
        Form6.Show
        
    ElseIf Combo1.Text = "MIKROKONTROLER" Then
        MsgBox "Anda dialihkan ke menu absen MK MIKROKONTROLER !", vbInformation, "System"
        Form1.Hide
        Form7.Show
        
    ElseIf Combo1.Text = "METPEN" Then
        MsgBox "Anda dialihkan ke menu absen MK METPEN !", vbInformation, "System"
        Form1.Hide
        Form8.Show
        
    ElseIf Combo1.Text = "INTERFACE" Then
        MsgBox "Anda dialihkan ke menu absen MK INTERFACE !", vbInformation, "System"
        Form1.Hide
        Form9.Show
        
    Else
        MsgBox "Pilihan tidak tersedia !", vbCritical, "System"
        
    End If
End Sub


'============================================================================================'
'List Menu'
'============================================================================================'
Private Sub Combo1_Change()
    Combo1.AddItem "PEMAPI"
    Combo1.AddItem "PEMWEB"
    Combo1.AddItem "MKTI"
    Combo1.AddItem "KWU"
    Combo1.AddItem "KCB"
    Combo1.AddItem "MIKROKONTROLLER"
    Combo1.AddItem "METPEN"
    Combo1.AddItem "INTERFACE"
End Sub

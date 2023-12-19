Attribute VB_Name = "Module2"
'============================================================================================'
'Koneksi Database MySQL Online'
'============================================================================================'
Public CN As New ADODB.Connection
Public MyRecSet As New ADODB.Recordset

Sub Conn()
    Set CN = New ADODB.Connection
    Set MyRecSet = New ADODB.Recordset
    
    Dim server, nUser, dbName, dbUser, password As String
    Dim port As Integer
    
    '////////////// HOSTING //////////////
    server = "sql12.freemysqlhosting.net"
    port = "3306"
    dbName = "YOUR DATABASE NAME"
    dbUser = "YOUR DATABASE USERNAME"
    password = "YOUR DATABASE PASSWORD"
    
    CN.Open "Driver={MySQL ODBC 8.0 ANSI Driver};Server=" & server _
        & ";Port=" & port & ";Database=" & dbName & ";User=" & dbUser & ";Password=" _
        & password & ";Option=3;"
End Sub

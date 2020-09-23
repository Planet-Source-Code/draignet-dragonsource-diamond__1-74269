VERSION 5.00
Begin VB.Form frmCredits 
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   Caption         =   "Engine Credits"
   ClientHeight    =   6000
   ClientLeft      =   120
   ClientTop       =   -45
   ClientWidth     =   6000
   ControlBox      =   0   'False
   Icon            =   "frmCredits.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6000
   ScaleWidth      =   6000
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox txtCredits 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Lucida Console"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2415
      Left            =   1680
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   1
      Top             =   2060
      Width           =   2625
   End
   Begin VB.Label picCancel 
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   4320
      TabIndex        =   0
      Top             =   1200
      Width           =   360
   End
End
Attribute VB_Name = "frmCredits"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

' Created with DragonSource Diamond. Copyright © 2012 DragonSource


Option Explicit

Private Sub Form_Load()
Dim f As Long
    
    f = FreeFile
    If FileExist("credits.txt") Then
        Open App.Path & "\credits.txt" For Input As #f
            txtCredits.Text = txtCredits.Text & vbNewLine & Input$(LOF(f), f)
        Close #f
    End If
End Sub

Private Sub picCancel_Click()
    frmMainMenu.Visible = True
    frmCredits.Visible = False
End Sub
Imports System
Imports System.Collections.Generic

Module a_table

  Sub a_table0(ByVal n as Integer, ByVal m as Integer, ByRef salle as Char()())
    ' Inserez votre code ici 
    
  End Sub
  Sub Main()
    Dim dm As Integer() = Array(Of String).ConvertAll(Of String, Integer)(Console.ReadLine().Split(" ".ToCharArray()), New Converter(Of String, Integer)(AddressOf Integer.Parse))
    Dim n As Integer = dm(0)
    Dim m As Integer = dm(1)
    Dim dn(n)() As Char
    For dp As Integer = 0 To n - 1
        dn(dp) = Console.ReadLine().ToCharArray()
    Next
    Dim salle As Char()() = dn
    a_table0(n, m, salle)
    End Sub
    
  End Module
  
  
Imports System
Imports System.Collections.Generic

Module recette

  Sub recette0(ByVal n as Integer, ByRef ordre as Integer(), ByRef desordre as Integer())
    ' Inserez votre code ici 
    
  End Sub
  Sub Main()
    Dim n As Integer = Integer.Parse(Console.ReadLine())
    Dim ordre As Integer() = Array(Of String).ConvertAll(Of String, Integer)(Console.ReadLine().Split(" ".ToCharArray()), New Converter(Of String, Integer)(AddressOf Integer.Parse))
    Dim desordre As Integer() = Array(Of String).ConvertAll(Of String, Integer)(Console.ReadLine().Split(" ".ToCharArray()), New Converter(Of String, Integer)(AddressOf Integer.Parse))
    recette0(n, ordre, desordre)
  End Sub
  
End Module


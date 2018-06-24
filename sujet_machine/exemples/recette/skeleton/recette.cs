using System;
using System.Collections.Generic;

public class recette
{
  static void recette0(int n, int[] ordre, int[] desordre)
  {
    //  Inserez votre code ici 
  }
  
  public static void Main(String[] args)
  {
    int n = int.Parse(Console.ReadLine());
    int[] ordre = new List<string>(Console.ReadLine().Split(" ".ToCharArray())).ConvertAll(int.Parse).ToArray();
    int[] desordre = new List<string>(Console.ReadLine().Split(" ".ToCharArray())).ConvertAll(int.Parse).ToArray();
    recette0(n, ordre, desordre);
  }
  
}


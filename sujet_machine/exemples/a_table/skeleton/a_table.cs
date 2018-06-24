using System;
using System.Collections.Generic;

public class a_table
{
  static void a_table0(int n, int m, char[][] salle)
  {
    //  Inserez votre code ici 
  }
  
  public static void Main(String[] args)
  {
    int[] ba = new List<string>(Console.ReadLine().Split(" ".ToCharArray())).ConvertAll(int.Parse).ToArray();
    int n = ba[0];
    int m = ba[1];
    char[][] bb = new char[n][];
    for (int bc = 0; bc < n; bc++)
        bb[bc] = Console.ReadLine().ToCharArray();
    char[][] salle = bb;
    a_table0(n, m, salle);
  }
  
}


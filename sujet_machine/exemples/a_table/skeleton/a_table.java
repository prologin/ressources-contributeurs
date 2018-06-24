import java.util.*;

public class a_table
{
  static Scanner scanner = new Scanner(System.in);
  static int[] read_int_line()
  {
    String[] s = scanner.nextLine().split(" ");
    int[] out = new int[s.length];
    for (int i = 0; i < s.length; i++)
      out[i] = Integer.parseInt(s[i]);
    return out;
  }

  static void a_table0(int n, int m, char[][] salle)
  {
    //  Inserez votre code ici 
  }
  public static void main(String args[])
  {
    int[] by = read_int_line();
    int n = by[0];
    int m = by[1];
    char[][] bz = new char[n][];
    for (int ca = 0; ca < n; ca++)
        bz[ca] = scanner.nextLine().toCharArray();
    char[][] salle = bz;
    a_table0(n, m, salle);
  }
  
}


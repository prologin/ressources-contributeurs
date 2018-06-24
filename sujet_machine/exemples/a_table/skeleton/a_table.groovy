import groovy.transform.Field
import java.util.*

  int[] read_int_line()
  {
    String[] s = scanner.nextLine().split(" ");
    int[] out = new int[s.length];
    for (int i = 0; i < s.length; i++)
      out[i] = Integer.parseInt(s[i]);
    return out;
  }

void a_table0(int n, int m, char[][] salle)
{
  //  Inserez votre code ici 
}
@Field Scanner scanner = new Scanner(System.in)
int[] bt = read_int_line()
int n = bt[0]
int m = bt[1]
char[][] bu = new char[n][]
for (int bv = 0; bv < n; bv++)
    bu[bv] = scanner.nextLine().toCharArray()
char[][] salle = bu
a_table0(n, m, salle)


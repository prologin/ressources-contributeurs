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

void recette0(int n, int[] ordre, int[] desordre)
{
  //  Inserez votre code ici 
}
@Field Scanner scanner = new Scanner(System.in)
int n = Integer.parseInt(scanner.nextLine())
int[] ordre = read_int_line()
int[] desordre = read_int_line()
recette0(n, ordre, desordre)


object a_table
{
  
  def a_table0(n : Int, m : Int, salle : Array[Array[Char]]){
    /* Inserez votre code ici */
  }
  
  def main(args : Array[String])
  {
    var (n, m) = readf2("{0,number} {1,number}").asInstanceOf[(Long, Long)] match { case x => (x._1.toInt, x._2.toInt) };
    var dg :Array[Array[Char]] = new Array[Array[Char]](n);
    for (dh <- 0 to n - 1)
        dg(dh) = readLine().toCharArray();
    var salle: Array[Array[Char]] = dg;
    a_table0(n, m, salle);
  }
  
}


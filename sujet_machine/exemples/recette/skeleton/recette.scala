object recette
{
  
  def recette0(n : Int, ordre : Array[Int], desordre : Array[Int]){
    /* Inserez votre code ici */
  }
  
  def main(args : Array[String])
  {
    var n: Int = readInt().toInt;
    var ordre: Array[Int] = readLine().split(" ").map(_.toInt);
    var desordre: Array[Int] = readLine().split(" ").map(_.toInt);
    recette0(n, ordre, desordre);
  }
  
}


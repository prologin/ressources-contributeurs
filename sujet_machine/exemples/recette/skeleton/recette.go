package main
import "fmt"
import "os"
import "bufio"
var reader *bufio.Reader

func skip() {
  var c byte
  fmt.Fscanf(reader, "%c", &c)
  if c == '\n' || c == ' ' {
    skip()
  } else {
    reader.UnreadByte()
  }
}
func recette0(n int, ordre []int, desordre []int) {
  /* Inserez votre code ici */
}
func main() {
  reader = bufio.NewReader(os.Stdin)
  var n int
  fmt.Fscanf(reader, "%d", &n)
  skip()
  var ordre []int = make([]int, n)
  for w := 0; w < n; w++ {
      fmt.Fscanf(reader, "%d", &ordre[w])
      skip()
  }
  var desordre []int = make([]int, n)
  for x := 0; x < n; x++ {
      fmt.Fscanf(reader, "%d", &desordre[x])
      skip()
  }
  recette0(n, ordre, desordre)
}


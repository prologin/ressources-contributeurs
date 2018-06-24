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
func a_table0(n int, m int, salle [][]byte) {
  /* Inserez votre code ici */
}
func main() {
  reader = bufio.NewReader(os.Stdin)
  var m int
  var n int
  fmt.Fscanf(reader, "%d", &n)
  skip()
  fmt.Fscanf(reader, "%d", &m)
  skip()
  var bp [][]byte = make([][]byte, n)
  for bq := 0; bq < n; bq++ {
      var br []byte = make([]byte, m)
      for bs := 0; bs < m; bs++ {
          fmt.Fscanf(reader, "%c", &br[bs])
      }
      skip()
      bp[bq] = br
  }
  var salle [][]byte = bp
  a_table0(n, m, salle)
}


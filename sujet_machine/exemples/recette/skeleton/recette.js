var util = require("util");
var fs = require("fs");
var current_char = null;
function read_char0(){
    var buf = Buffer.alloc(1);
    fs.readSync(process.stdin.fd, buf, 0, 1)[0];
    return buf.toString();
}
function stdinsep(){
    if (current_char == null) current_char = read_char0();
    while (current_char.match(/[\n\t\s]/g))
        current_char = read_char0();
}
function read_int_(){
  if (current_char == null) current_char = read_char0();
  var sign = 1;
  if (current_char == '-'){
     current_char = read_char0();
     sign = -1;
  }
  var out = 0;
  while (true){
    if (current_char.match(/[0-9]/g)){
      out = out * 10 + current_char.charCodeAt(0) - '0'.charCodeAt(0);
      current_char = read_char0();
    }else{
      return out * sign;
    }
  }
}

function recette0(n, ordre, desordre){
    //  Inserez votre code ici 
}
var n = read_int_();
stdinsep();
var ordre = new Array(n);
for (var y = 0; y < n; y++)
{
    ordre[y] = read_int_();
    stdinsep();
}
var desordre = new Array(n);
for (var z = 0; z < n; z++)
{
    desordre[z] = read_int_();
    stdinsep();
}
recette0(n, ordre, desordre);


var util = require("util");
var fs = require("fs");
var current_char = null;
function read_char0(){
    var buf = Buffer.alloc(1);
    fs.readSync(process.stdin.fd, buf, 0, 1)[0];
    return buf.toString();
}
function read_char_(){
    if (current_char == null) current_char = read_char0();
    var out = current_char;
    current_char = read_char0();
    return out;
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

function a_table0(n, m, salle){
    //  Inserez votre code ici 
}
var n = read_int_();
stdinsep();
var m = read_int_();
stdinsep();
var cb = new Array(n);
for (var cc = 0; cc < n; cc++)
{
    var cd = new Array(m);
    for (var ce = 0; ce < m; ce++)
    {
        cd[ce] = read_char_();
    }
    stdinsep();
    cb[cc] = cd;
}
var salle = cb;
a_table0(n, m, salle);


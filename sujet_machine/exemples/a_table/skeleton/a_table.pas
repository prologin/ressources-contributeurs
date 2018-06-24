program a_table;

var global_char : char;
var global_has_char : boolean;

procedure skip_char();
begin
   global_has_char := true;
   read(global_char);
end; 
procedure skip();
var
   n : char;
   t : char;
   s : char;
begin
   n := #13;
   t := #10;
   s := #32;
   if not( global_has_char ) then
      skip_char();
   while (global_char = s) or (global_char = n) or (global_char = t) do
   begin
      skip_char();
   end;
end;
function read_char_aux() : char;
begin
   if global_has_char then
      read_char_aux := global_char
   else
   begin
      skip_char();
      read_char_aux := global_char;
   end
end;
function read_char_() : char;
var
   c : char;
begin
   c := read_char_aux();
   skip_char();
   read_char_ := c;
end;
function read_int_() : Longint;
var
   c    : char;
   i    : Longint;
   sign :  Longint;
begin
   i := 0;
   c := read_char_aux();
   if c = '-' then begin
      skip_char();
      sign := -1;
   end
   else
      sign := 1;

   repeat
      c := read_char_aux();
      if (ord(c) <=57) and (ord(c) >= 48) then
      begin
         i := i * 10 + ord(c) - 48;
         skip_char();
      end
      else
         exit(i * sign);
   until false;
end;

type cu = array of char;
type cv = array of cu;
procedure a_table0(n : Longint; m : Longint; salle : cv);
begin
  { Inserez votre code ici }
end;


var
  cq : cv;
  cr : Longint;
  cs : cu;
  ct : Longint;
  m : Longint;
  n : Longint;
  salle : cv;
begin
  n := read_int_();
  skip();
  m := read_int_();
  skip();
  SetLength(cq, n);
  for cr := 0 to  n - 1 do
  begin
    SetLength(cs, m);
    for ct := 0 to  m - 1 do
    begin
      cs[ct] := read_char_();
    end;
    skip();
    cq[cr] := cs;
  end;
  salle := cq;
  a_table0(n, m, salle);
end.



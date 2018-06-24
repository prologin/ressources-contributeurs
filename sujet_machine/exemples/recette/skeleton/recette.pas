program recette;

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

type bi = array of Longint;
procedure recette0(n : Longint; ordre : bi; desordre : bi);
begin
  { Inserez votre code ici }
end;


var
  bg : Longint;
  bh : Longint;
  desordre : bi;
  n : Longint;
  ordre : bi;
begin
  n := read_int_();
  skip();
  SetLength(ordre, n);
  for bg := 0 to  n - 1 do
  begin
    ordre[bg] := read_int_();
    skip();
  end;
  SetLength(desordre, n);
  for bh := 0 to  n - 1 do
  begin
    desordre[bh] := read_int_();
    skip();
  end;
  recette0(n, ordre, desordre);
end.



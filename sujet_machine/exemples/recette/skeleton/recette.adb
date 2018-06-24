
with ada.text_io, ada.Integer_text_IO, Ada.Text_IO.Text_Streams, Ada.Strings.Fixed, Interfaces.C;
use ada.text_io, ada.Integer_text_IO, Ada.Strings, Ada.Strings.Fixed, Interfaces.C;

procedure recette is


type stringptr is access all char_array;
procedure SkipSpaces is
                                                C : Character;
                                                Eol : Boolean;
                                              begin
                                                loop
                                                  Look_Ahead(C, Eol);
                                                  exit when Eol or C /= ' ';
                                                  Get(C);
                                                end loop;
                                              end;
type c is Array (Integer range <>) of Integer;
type c_PTR is access c;
procedure recette0(n : in Integer; ordre : in c_PTR; desordre : in c_PTR) is
begin
  NULL;
  
end;

  ordre : c_PTR;
  n : Integer;
  desordre : c_PTR;
begin
  Get(n);
  SkipSpaces;
  ordre := new c (0..n);
  for a in integer range 0..n - 1 loop
    Get(ordre(a));
    SkipSpaces;
  end loop;
  desordre := new c (0..n);
  for b in integer range 0..n - 1 loop
    Get(desordre(b));
    SkipSpaces;
  end loop;
  recette0(n, ordre, desordre);
end;


with ada.text_io, ada.Integer_text_IO, Ada.Text_IO.Text_Streams, Ada.Strings.Fixed, Interfaces.C;
use ada.text_io, ada.Integer_text_IO, Ada.Strings, Ada.Strings.Fixed, Interfaces.C;

procedure a_table is


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
type g is Array (Integer range <>) of Character;
type g_PTR is access g;
type h is Array (Integer range <>) of g_PTR;
type h_PTR is access h;
procedure a_table0(n : in Integer; m : in Integer; salle : in h_PTR) is
begin
  NULL;
  
end;

  salle : h_PTR;
  n : Integer;
  m : Integer;
  e : g_PTR;
  c : h_PTR;
begin
  Get(n);
  SkipSpaces;
  Get(m);
  SkipSpaces;
  c := new h (0..n);
  for d in integer range 0..n - 1 loop
    e := new g (0..m);
    for f in integer range 0..m - 1 loop
      Get(e(f));
    end loop;
    SkipSpaces;
    c(d) := e;
  end loop;
  salle := c;
  a_table0(n, m, salle);
end;

let a_table0 _n _m _salle =
  (* Inserez votre code ici *)
  ()

let () =
 let n, m = Scanf.scanf "%d %d " (fun n m -> n, m) in
  let cl = Array.init n (fun _cm ->
    let co = Array.init m (fun _cp ->
      let cn = Scanf.scanf "%c" (fun cn -> cn) in
      cn) in
    Scanf.scanf " " ();
    co) in
  let salle = cl in
  a_table0 n m salle 
 
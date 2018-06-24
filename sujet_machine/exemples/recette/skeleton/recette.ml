let recette0 _n _ordre _desordre =
  (* Inserez votre code ici *)
  ()

let () =
 let n = Scanf.scanf "%d " (fun n -> n) in
  let ordre = Array.init n (fun _bc ->
    let bd = Scanf.scanf "%d " (fun bd -> bd) in
    bd) in
  let desordre = Array.init n (fun _be ->
    let bf = Scanf.scanf "%d " (fun bf -> bf) in
    bf) in
  recette0 n ordre desordre 
 
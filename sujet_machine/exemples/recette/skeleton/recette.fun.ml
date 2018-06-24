let recette0 n ordre desordre =
  (*  Inserez votre code ici  *)
  ()

let main =
  let n = (Scanf.scanf "%d " (fun x -> x)) in
  let ordre = Array.init n (fun r -> Scanf.scanf "%d"
  (fun s -> ( Scanf.scanf "%[\n \010]" (fun _ -> ());
              s))) in
  let desordre = Array.init n (fun u -> Scanf.scanf "%d"
  (fun v -> ( Scanf.scanf "%[\n \010]" (fun _ -> ());
              v))) in
  ( recette0 n ordre desordre;
    ())


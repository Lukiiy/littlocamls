let charset = "abcdefghijklmnopqrstuvwxyz" ^ "ABCDEFGHIJKLMNOPQRSTUVWXYZ" ^ "0123456789" ^ "!@#$%^&*"

let gen length =
  Random.self_init ();

  let n = String.length charset in

  String.init length (fun _ -> charset.[Random.int n])

let () =
  print_endline (gen 16)